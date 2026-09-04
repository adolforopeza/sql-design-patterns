-- Asegurar la existencia de la extensión para UUID si no está activa
create extension if not exists "uuid-ossp";

-- Crear el esquema bittree si no existe
create schema if not exists bittree;

-- Creación de la tabla de perfiles
create table bittree.profiles (
    id uuid not null default uuid_generate_v4(),
    username varchar(50) not null unique,
    full_name text not null,
    avatar_url text,
    profile_data_json jsonb not null default '{}'::jsonb,
    settings jsonb not null default '{"theme": "dark", "default_og_image": "/og-default.png"}'::jsonb,
    is_active boolean not null default true,
    created_at timestamp with time zone not null default timezone('utc'::text, now()),
    updated_at timestamp with time zone not null default timezone('utc'::text, now()),
    constraint profiles_pkey primary key (id)
);

-- Índices optimizados para perfiles
create index idx_profiles_data_json on bittree.profiles using gin (profile_data_json);
create index idx_profiles_username on bittree.profiles (username);

-- Creación de la tabla de enlaces
create table bittree.links (
    id uuid NOT NULL DEFAULT uuid_generate_v4(),
    profile_id uuid not null,
    link_json jsonb not null default '{}'::jsonb,
    icon varchar(50),
    position int not null default 0,
    clicks int not null default 0,
    is_active boolean not null default true,
    created_at timestamp with time zone not null default timezone('utc'::text, now()),
    updated_at timestamp with time zone not null default timezone('utc'::text, now()),
    constraint links_pkey primary key (id),
    constraint links_profile_id_fkey foreign key (profile_id) references bittree.profiles(id) on delete cascade
);

-- Índices optimizados para rendimiento en enlaces
create index idx_links_profile_id on bittree.links (profile_id);
create index idx_links_position on bittree.links (profile_id, position);
create index idx_links_link_json on bittree.links using gin (link_json);

-- ==========================================
-- SEGURIDAD: Row Level Security (RLS)
-- ==========================================
alter table bittree.profiles enable row level security;
alter table bittree.links enable row level security;

-- Política: Lectura pública de perfiles activos
create policy "Permitir lectura pública de perfiles activos" on bittree.profiles
    for select using (is_active = true);

-- Política: Lectura pública de enlaces activos
create policy "Permitir lectura pública de enlaces activos" on bittree.links
    for select using (is_active = true);

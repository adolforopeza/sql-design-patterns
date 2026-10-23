/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.18-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: system_auth
-- ------------------------------------------------------
-- Server version	10.11.18-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES
(1,'Adolfo Oropeza','adolfo.oropeza@devstore.local','$2y$12$KIX9v3q9QZ1wX8y2Z7K9Ue8vX9z8K9v3q9QZ1wX8y2Z7K9Ue8vX9z',1,'2026-08-17 14:36:41','2026-08-17 14:36:41');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `audit_log`
--

LOCK TABLES `audit_log` WRITE;
/*!40000 ALTER TABLE `audit_log` DISABLE KEYS */;
INSERT INTO `audit_log` VALUES
(1,'INFO','{\"event\": \"system_init\", \"description\": \"Sistema inicializado correctamente en servidor Vercel\"}','2026-08-17 14:36:41'),
(2,'DEBUG','{\"event\": \"db_connect\", \"description\": \"Conexión exitosa a Supabase PostgreSQL/MySQL layer\"}','2026-08-17 14:36:41'),
(3,'NOTICE','{\"event\": \"config_update\", \"description\": \"Modificación de variables de entorno globales\"}','2026-08-17 14:36:41'),
(4,'WARNING','{\"event\": \"high_memory\", \"description\": \"Uso de memoria superó el 75% en worker secundario\"}','2026-08-17 14:36:41'),
(5,'ERROR','{\"event\": \"auth_fail\", \"description\": \"Intento de acceso con token inválido desde IP desconocida\"}','2026-08-17 14:36:41'),
(6,'CRITICAL','{\"event\": \"payment_timeout\", \"description\": \"Pasarela de pago USDT no respondió en el tiempo límite\"}','2026-08-17 14:36:41'),
(7,'ALERT','{\"event\": \"sql_injection_attempt\", \"description\": \"Patrón sospechoso detectado en parámetro GET\"}','2026-08-17 14:36:41'),
(8,'EMERGENCY','{\"event\": \"disk_space\", \"description\": \"Espacio en disco crítico en partición principal\"}','2026-08-17 14:36:41'),
(9,'INFO','{\"event\": \"admin_login\", \"description\": \"Administrador raíz inició sesión exitosamente\"}','2026-08-17 14:36:41'),
(10,'DEBUG','{\"event\": \"cache_flush\", \"description\": \"Caché de Redis vaciada por comando manual\"}','2026-08-17 14:36:41'),
(11,'NOTICE','{\"event\": \"module_install\", \"description\": \"Módulo Magento Core instalado con éxito\"}','2026-08-17 14:36:41'),
(12,'WARNING','{\"event\": \"rate_limit\", \"description\": \"Cliente API excedió el límite de peticiones por minuto\"}','2026-08-17 14:36:41'),
(13,'ERROR','{\"event\": \"file_not_found\", \"description\": \"No se encontró el recurso multimedia solicitado\"}','2026-08-17 14:36:41'),
(14,'INFO','{\"event\": \"order_placed\", \"description\": \"Nueva orden procesada e incrementada correctamente\"}','2026-08-17 14:36:41'),
(15,'DEBUG','{\"event\": \"cron_exec\", \"description\": \"Ejecución de tareas programadas finalizada\"}','2026-08-17 14:36:41'),
(16,'NOTICE','{\"event\": \"plugin_update\", \"description\": \"Plugin de WordPress actualizado a versión 2.1.0\"}','2026-08-17 14:36:41'),
(17,'WARNING','{\"event\": \"ssl_expiry\", \"description\": \"El certificado SSL expirará en menos de 30 días\"}','2026-08-17 14:36:41'),
(18,'ERROR','{\"event\": \"smtp_connection\", \"description\": \"Fallo temporal al enviar correo de confirmación\"}','2026-08-17 14:36:41'),
(19,'CRITICAL','{\"event\": \"db_lock\", \"description\": \"Bloqueo de exclusividad detectado en tabla orders\"}','2026-08-17 14:36:41'),
(20,'INFO','{\"event\": \"system_backup\", \"description\": \"Respaldo automático de base de datos completado\"}','2026-08-17 14:36:41'),
(21,'INFO','{\"event\": \"reseed_start\", \"description\": \"Iniciado proceso de reinicio y limpieza de duplicados desde ID 20\"}','2026-08-17 14:58:16'),
(22,'DEBUG','{\"event\": \"fk_check\", \"description\": \"Verificación de integridad referencial completada sin bloqueos\"}','2026-08-17 14:58:16'),
(23,'NOTICE','{\"event\": \"cache_clear\", \"description\": \"Caché de consultas SQL purgada exitosamente\"}','2026-08-17 14:58:16'),
(24,'WARNING','{\"event\": \"memory_limit\", \"description\": \"Optimización de asignación de memoria RAM en contenedor Docker\"}','2026-08-17 14:58:16'),
(25,'ERROR','{\"event\": \"duplicate_key\", \"description\": \"Resuelto conflicto de duplicados en inserción masiva\"}','2026-08-17 14:58:16'),
(26,'CRITICAL','{\"event\": \"db_vacuum\", \"description\": \"Mantenimiento preventivo y desfragmentación de tablas completado\"}','2026-08-17 14:58:16'),
(27,'INFO','{\"event\": \"settings_reload\", \"description\": \"Recarga de variables de configuración globales del sistema\"}','2026-08-17 14:58:16'),
(28,'DEBUG','{\"event\": \"jwt_validate\", \"description\": \"Validación de tokens de autenticación API sin errores\"}','2026-08-17 14:58:16'),
(29,'NOTICE','{\"event\": \"rate_reset\", \"description\": \"Reinicio de contadores de límite de tasa para clientes\"}','2026-08-17 14:58:16'),
(30,'WARNING','{\"event\": \"disk_frag\", \"description\": \"Fragmentación de disco detectada en partición de logs secundaria\"}','2026-08-17 14:58:16'),
(31,'INFO','{\"event\": \"backup_verified\", \"description\": \"Validación de integridad de respaldo remoto en Supabase\"}','2026-08-17 14:58:16'),
(32,'DEBUG','{\"event\": \"orm_hydrate\", \"description\": \"Hidratación de modelos relacionales optimizada en velocidad\"}','2026-08-17 14:58:16'),
(33,'NOTICE','{\"event\": \"ssl_renew\", \"description\": \"Certificado SSL verificado y activo para dominios de producción\"}','2026-08-17 14:58:16'),
(34,'ERROR','{\"event\": \"timeout_spike\", \"description\": \"Pico de tiempo de respuesta registrado en pasarela USDT\"}','2026-08-17 14:58:16'),
(35,'INFO','{\"event\": \"schema_sync\", \"description\": \"Sincronización de esquemas relacionales sin pérdida de datos\"}','2026-08-17 14:58:16'),
(36,'DEBUG','{\"event\": \"json_parse\", \"description\": \"Parseo masivo de estructuras JSON de carritos verificado\"}','2026-08-17 14:58:16'),
(37,'NOTICE','{\"event\": \"session_purge\", \"description\": \"Limpieza de sesiones de usuario expiradas en memoria\"}','2026-08-17 14:58:16'),
(38,'WARNING','{\"event\": \"cpu_load\", \"description\": \"Carga de CPU normalizada tras ejecución de tareas en segundo plano\"}','2026-08-17 14:58:16'),
(39,'INFO','{\"event\": \"reseed_complete\", \"description\": \"Proceso de re-inserción desde ID 20 finalizado con éxito\"}','2026-08-17 14:58:16'),
(40,'DEBUG','{\"event\": \"system_ready\", \"description\": \"Plataforma operativa y lista para alta concurrencia\"}','2026-08-17 14:58:16');
/*!40000 ALTER TABLE `audit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_token`
--

LOCK TABLES `auth_token` WRITE;
/*!40000 ALTER TABLE `auth_token` DISABLE KEYS */;
INSERT INTO `auth_token` VALUES
(1,1,'a1b2c3d4e5f67890123456789abcdef0123456789abcdef0123456789abcdef0','api','2026-12-31 23:59:59','2026-08-17 14:36:41'),
(2,2,'b2c3d4e5f67890123456789abcdef0123456789abcdef0123456789abcdef01a1','composer','2026-12-31 23:59:59','2026-08-17 14:36:41'),
(3,3,'c3d4e5f67890123456789abcdef0123456789abcdef0123456789abcdef01a1b2','api','2026-12-31 23:59:59','2026-08-17 14:36:41'),
(4,4,'d4e5f67890123456789abcdef0123456789abcdef0123456789abcdef01a1b2c3','api','2026-12-31 23:59:59','2026-08-17 14:36:41'),
(5,5,'e5f67890123456789abcdef0123456789abcdef0123456789abcdef01a1b2c3d4','composer','2026-12-31 23:59:59','2026-08-17 14:36:41'),
(6,6,'f67890123456789abcdef0123456789abcdef0123456789abcdef01a1b2c3d4e5','api','2026-12-31 23:59:59','2026-08-17 14:36:41'),
(7,7,'7890123456789abcdef0123456789abcdef0123456789abcdef01a1b2c3d4e5f6','api','2026-12-31 23:59:59','2026-08-17 14:36:41'),
(8,8,'890123456789abcdef0123456789abcdef0123456789abcdef01a1b2c3d4e5f67a','composer','2026-12-31 23:59:59','2026-08-17 14:36:41'),
(9,9,'90123456789abcdef0123456789abcdef0123456789abcdef01a1b2c3d4e5f67ab','api','2026-12-31 23:59:59','2026-08-17 14:36:41'),
(10,10,'0123456789abcdef0123456789abcdef0123456789abcdef01a1b2c3d4e5f67abc','api','2026-12-31 23:59:59','2026-08-17 14:36:41'),
(11,11,'123456789abcdef0123456789abcdef0123456789abcdef01a1b2c3d4e5f67abcd','composer','2026-12-31 23:59:59','2026-08-17 14:36:41'),
(12,12,'23456789abcdef0123456789abcdef0123456789abcdef01a1b2c3d4e5f67abcde','api','2026-12-31 23:59:59','2026-08-17 14:36:41'),
(13,13,'3456789abcdef0123456789abcdef0123456789abcdef01a1b2c3d4e5f67abcdef','api','2026-12-31 23:59:59','2026-08-17 14:36:41'),
(14,14,'456789abcdef0123456789abcdef0123456789abcdef01a1b2c3d4e5f67abcdef0','composer','2026-12-31 23:59:59','2026-08-17 14:36:41'),
(15,15,'56789abcdef0123456789abcdef0123456789abcdef01a1b2c3d4e5f67abcdef01','api','2026-12-31 23:59:59','2026-08-17 14:36:41'),
(16,16,'6789abcdef0123456789abcdef0123456789abcdef01a1b2c3d4e5f67abcdef012','api','2026-12-31 23:59:59','2026-08-17 14:36:41'),
(17,17,'789abcdef0123456789abcdef0123456789abcdef01a1b2c3d4e5f67abcdef0123','composer','2026-12-31 23:59:59','2026-08-17 14:36:41'),
(18,18,'89abcdef0123456789abcdef0123456789abcdef01a1b2c3d4e5f67abcdef01234','api','2026-12-31 23:59:59','2026-08-17 14:36:41'),
(19,19,'9abcdef0123456789abcdef0123456789abcdef01a1b2c3d4e5f67abcdef012345','api','2026-12-31 23:59:59','2026-08-17 14:36:41'),
(20,20,'abcdef0123456789abcdef0123456789abcdef01a1b2c3d4e5f67abcdef0123456','composer','2026-12-31 23:59:59','2026-08-17 14:36:41'),
(21,20,'v2a1b2c3d4e5f67890123456789abcdef0123456789abcdef0123456789abcdef0','api','2027-12-31 23:59:59','2026-08-17 14:58:16'),
(22,21,'v2b2c3d4e5f67890123456789abcdef0123456789abcdef0123456789abcdef01a1','composer','2027-12-31 23:59:59','2026-08-17 14:58:16'),
(23,22,'v2c3d4e5f67890123456789abcdef0123456789abcdef0123456789abcdef01a1b2','api','2027-12-31 23:59:59','2026-08-17 14:58:16'),
(24,23,'v2d4e5f67890123456789abcdef0123456789abcdef0123456789abcdef01a1b2c3','api','2027-12-31 23:59:59','2026-08-17 14:58:16'),
(25,24,'v2e5f67890123456789abcdef0123456789abcdef0123456789abcdef01a1b2c3d4','composer','2027-12-31 23:59:59','2026-08-17 14:58:16'),
(26,25,'v2f67890123456789abcdef0123456789abcdef0123456789abcdef01a1b2c3d4e5','api','2027-12-31 23:59:59','2026-08-17 14:58:16'),
(27,26,'v27890123456789abcdef0123456789abcdef0123456789abcdef01a1b2c3d4e5f6','api','2027-12-31 23:59:59','2026-08-17 14:58:16'),
(28,27,'v2890123456789abcdef0123456789abcdef0123456789abcdef01a1b2c3d4e5f67a','composer','2027-12-31 23:59:59','2026-08-17 14:58:16'),
(29,28,'v290123456789abcdef0123456789abcdef0123456789abcdef01a1b2c3d4e5f67ab','api','2027-12-31 23:59:59','2026-08-17 14:58:16'),
(30,29,'v20123456789abcdef0123456789abcdef0123456789abcdef01a1b2c3d4e5f67abc','api','2027-12-31 23:59:59','2026-08-17 14:58:16'),
(31,30,'v2123456789abcdef0123456789abcdef0123456789abcdef01a1b2c3d4e5f67abcd','composer','2027-12-31 23:59:59','2026-08-17 14:58:16'),
(32,31,'v223456789abcdef0123456789abcdef0123456789abcdef01a1b2c3d4e5f67abcde','api','2027-12-31 23:59:59','2026-08-17 14:58:16'),
(33,32,'v23456789abcdef0123456789abcdef0123456789abcdef01a1b2c3d4e5f67abcdef','api','2027-12-31 23:59:59','2026-08-17 14:58:16'),
(34,33,'v2456789abcdef0123456789abcdef0123456789abcdef01a1b2c3d4e5f67abcdef0','composer','2027-12-31 23:59:59','2026-08-17 14:58:16'),
(35,34,'v256789abcdef0123456789abcdef0123456789abcdef01a1b2c3d4e5f67abcdef01','api','2027-12-31 23:59:59','2026-08-17 14:58:16'),
(36,35,'v26789abcdef0123456789abcdef0123456789abcdef01a1b2c3d4e5f67abcdef012','api','2027-12-31 23:59:59','2026-08-17 14:58:16'),
(37,36,'v2789abcdef0123456789abcdef0123456789abcdef01a1b2c3d4e5f67abcdef0123','composer','2027-12-31 23:59:59','2026-08-17 14:58:16'),
(38,37,'v289abcdef0123456789abcdef0123456789abcdef01a1b2c3d4e5f67abcdef01234','api','2027-12-31 23:59:59','2026-08-17 14:58:16'),
(39,38,'v29abcdef0123456789abcdef0123456789abcdef01a1b2c3d4e5f67abcdef012345','api','2027-12-31 23:59:59','2026-08-17 14:58:16'),
(40,39,'v2abcdef0123456789abcdef0123456789abcdef01a1b2c3d4e5f67abcdef0123456','composer','2027-12-31 23:59:59','2026-08-17 14:58:16');
/*!40000 ALTER TABLE `auth_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES
(1,'{\"items\": [{\"product_id\": 1, \"qty\": 1}], \"subtotal\": 49.99}',1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(2,'{\"items\": [{\"product_id\": 2, \"qty\": 1}], \"subtotal\": 39.99}',1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(3,'{\"items\": [{\"product_id\": 3, \"qty\": 2}], \"subtotal\": 59.98}',1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(4,'{\"items\": [{\"product_id\": 4, \"qty\": 1}], \"subtotal\": 25.00}',1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(5,'{\"items\": [{\"product_id\": 5, \"qty\": 1}], \"subtotal\": 59.99}',1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(6,'{\"items\": [{\"product_id\": 6, \"qty\": 1}], \"subtotal\": 79.99}',1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(7,'{\"items\": [{\"product_id\": 7, \"qty\": 1}], \"subtotal\": 99.99}',1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(8,'{\"items\": [{\"product_id\": 8, \"qty\": 1}], \"subtotal\": 120.00}',1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(9,'{\"items\": [{\"product_id\": 9, \"qty\": 1}], \"subtotal\": 149.99}',1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(10,'{\"items\": [{\"product_id\": 10, \"qty\": 1}], \"subtotal\": 89.99}',1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(11,'{\"items\": [{\"product_id\": 11, \"qty\": 1}], \"subtotal\": 69.99}',0,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(12,'{\"items\": [{\"product_id\": 12, \"qty\": 1}], \"subtotal\": 45.00}',1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(13,'{\"items\": [{\"product_id\": 13, \"qty\": 1}], \"subtotal\": 34.99}',1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(14,'{\"items\": [{\"product_id\": 14, \"qty\": 1}], \"subtotal\": 29.99}',0,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(15,'{\"items\": [{\"product_id\": 15, \"qty\": 1}], \"subtotal\": 19.99}',1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(16,'{\"items\": [{\"product_id\": 16, \"qty\": 1}], \"subtotal\": 65.00}',1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(17,'{\"items\": [{\"product_id\": 17, \"qty\": 1}], \"subtotal\": 55.00}',1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(18,'{\"items\": [{\"product_id\": 18, \"qty\": 1}], \"subtotal\": 1000.00}',1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(19,'{\"items\": [{\"product_id\": 19, \"qty\": 1}], \"subtotal\": 75.00}',1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(20,'{\"items\": [{\"product_id\": 20, \"qty\": 1}], \"subtotal\": 49.99}',1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(21,'{\"items\": [{\"product_id\": 20, \"qty\": 1}], \"subtotal\": 59.99}',1,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(22,'{\"items\": [{\"product_id\": 21, \"qty\": 1}], \"subtotal\": 49.99}',1,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(23,'{\"items\": [{\"product_id\": 22, \"qty\": 2}], \"subtotal\": 79.98}',1,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(24,'{\"items\": [{\"product_id\": 23, \"qty\": 1}], \"subtotal\": 35.00}',1,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(25,'{\"items\": [{\"product_id\": 24, \"qty\": 1}], \"subtotal\": 69.99}',1,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(26,'{\"items\": [{\"product_id\": 25, \"qty\": 1}], \"subtotal\": 89.99}',1,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(27,'{\"items\": [{\"product_id\": 26, \"qty\": 1}], \"subtotal\": 109.99}',1,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(28,'{\"items\": [{\"product_id\": 27, \"qty\": 1}], \"subtotal\": 130.00}',1,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(29,'{\"items\": [{\"product_id\": 28, \"qty\": 1}], \"subtotal\": 159.99}',1,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(30,'{\"items\": [{\"product_id\": 29, \"qty\": 1}], \"subtotal\": 99.99}',1,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(31,'{\"items\": [{\"product_id\": 30, \"qty\": 1}], \"subtotal\": 79.99}',0,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(32,'{\"items\": [{\"product_id\": 31, \"qty\": 1}], \"subtotal\": 55.00}',1,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(33,'{\"items\": [{\"product_id\": 32, \"qty\": 1}], \"subtotal\": 45.00}',1,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(34,'{\"items\": [{\"product_id\": 33, \"qty\": 1}], \"subtotal\": 39.99}',0,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(35,'{\"items\": [{\"product_id\": 34, \"qty\": 1}], \"subtotal\": 29.99}',1,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(36,'{\"items\": [{\"product_id\": 35, \"qty\": 1}], \"subtotal\": 75.00}',1,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(37,'{\"items\": [{\"product_id\": 36, \"qty\": 1}], \"subtotal\": 65.00}',1,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(38,'{\"items\": [{\"product_id\": 37, \"qty\": 1}], \"subtotal\": 1100.00}',1,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(39,'{\"items\": [{\"product_id\": 38, \"qty\": 1}], \"subtotal\": 85.00}',1,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(40,'{\"items\": [{\"product_id\": 39, \"qty\": 1}], \"subtotal\": 59.99}',1,'2026-08-17 14:58:16','2026-08-17 14:58:16');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES
(1,'Módulos Magento','Extensiones avanzadas y optimizadas para Magento 2.','Colección completa de módulos desarrollados bajo estrictos estándares de rendimiento, arquitectura limpia y alta velocidad para comercio electrónico Magento.',11,1,'modulos-magento','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(2,'Plugins WordPress','Plugins profesionales orientados a SEO y rendimiento.','Herramientas de optimización web, seguridad avanzada y gestión de contenidos diseñadas para WordPress de alto tráfico.',12,1,'plugins-wordpress','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(3,'Godot Assets & Scripts','Scripts y herramientas de generación procedural en Godot.','Recursos avanzados en GDScript para generación procedural de mundos, mallas, sistemas de ríos y topografías complejas.',13,1,'godot-assets','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(4,'DevOps & Docker Kits','Infraestructura como código y contenedores optimizados.','Kits de despliegue rápido, configuraciones Docker, scripts para Fedora y entornos Linux de consumo ultra bajo de memoria.',14,1,'devops-docker','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(5,'Consultoría Senior','Horas de consultoría técnica con arquitecto senior.','Asesoría experta en bases de datos, optimización de código, patrones de diseño y refactorización de sistemas críticos.',15,1,'consultoria-senior','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(6,'Librerías PHP & Frameworks','Componentes y micro-frameworks en PHP moderno.','Librerías independientes orientadas al máximo rendimiento, bajo consumo de memoria y compatibilidad con Symfony y Laravel.',11,1,'librerias-php','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(7,'Microservicios en Rust','Bases y servicios de alto rendimiento en Rust.','Plantillas y código fuente optimizado para microservicios concurrentes seguros y veloces.',13,1,'microservicios-rust','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(8,'Motores 3D en C++','Estructuras base para motores gráficos y videojuegos.','Clases y subsistemas en C++ para renderizado, físicas y gestión de memoria eficiente.',13,1,'motores-cplusplus','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(9,'Apps Android nativas','Soluciones móviles y sistemas POS para Android.','Aplicaciones móviles optimizadas para terminales de pago, sincronización offline y bases de datos locales.',12,1,'apps-android','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(10,'Boilerplates SaaS','Plantillas de inicio rápido para aplicaciones SaaS.','Sistemas completos de autenticación, pasarelas de pago y paneles de administración listos para producción.',11,1,'boilerplates-saas','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(11,'Herramientas de Base de Datos','Scripts de optimización y esquemas relacionales.','Modelos normalizados, triggers y funciones almacenadas para MySQL y PostgreSQL de alto rendimiento.',14,1,'herramientas-db','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(12,'Seguridad y Autenticación','Sistemas robustos de tokens y control de accesos.','Módulos de autenticación API, control de sesiones cifradas y registros de auditoría avanzada.',12,1,'seguridad-autenticacion','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(13,'Utilidades de Red','Herramientas para gestión de redes y mini UPS.','Software y configuraciones para monitoreo de energía, respaldos automáticos y hardware modificado.',14,1,'utilidades-red','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(14,'Assets de Interfaz UI/UX','Diseños de interfaces de usuario modernos y oscuros.','Kits de componentes visuales optimizados para paneles administrativos de e-commerce.',15,1,'assets-ui-ux','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(15,'APIs y Conectores de Pago','Pasarelas de pago multi-moneda y USDT.','Conectores seguros para procesamiento de pagos en USD, criptomonedas y referencias en moneda local.',11,1,'apis-pagos','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(16,'Kits de Pruebas Unitarias','Frameworks y suites de tests automatizados.','Scripts de pruebas de estrés, cobertura de código y validación de integridad referencial.',12,1,'kits-pruebas','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(17,'Documentación Técnica','Manuales y guías de arquitectura de software.','Documentación integrada directamente en el código fuente respetando las reglas de cada lenguaje.',15,1,'documentacion-tecnica','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(18,'Herramientas SEO','Optimización de metadatos y Open Graph.','Sistemas de gestión de URLs canónicas, indexación inteligente y metadatos dinámicos.',11,1,'herramientas-seo','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(19,'Scripts de Automatización','Automatización de tareas con Bash y Python.','Scripts orientados al mantenimiento preventivo de servidores Linux y contenedores Docker.',14,1,'scripts-automatizacion','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(20,'Kits de Videojuegos Fighting','Sistemas de cámaras y escenarios 3D dinámicos.','Estructuras y lógica para juegos de lucha inspirados en clásicos con arenas multinivel.',13,1,'kits-fighting-games','2026-08-17 14:36:41','2026-08-17 14:36:41');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES
(1,'Carlos Mendoza','carlos.mendoza@devcorp.com','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(2,'Mariana Rivero','mariana.rivero@techsolutions.ve','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(3,'Alejandro Silva','asilva@programmers.io','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(4,'Valeria Gomez','valeria.gomez@CodeCraft.net','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(5,'Ernesto Perez','eperez@sysadmin.org','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(6,'Sofia Rodriguez','sofia.rodriguez@gamedev.studio','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(7,'Ricardo Alfonzo','ralfonzo@linuxmail.org','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(8,'Daniela Torres','dtorres@webmaster.com','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(9,'Gabriel Rojas','grojas@devops-expert.net','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(10,'Carmen Siso','carmen.siso@datatech.ve','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(11,'Luisana Blanco','lblanco@cloudnative.io','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(12,'Fernando Morales','fmorales@cybersec.net','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(13,'Patricia Uzcategui','puzcategui@software-engineers.org','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(14,'Jose Gregorio Hernandez','jghernandez@meditech.com','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(15,'Beatriz Cardenas','bcardenas@uxdesign.Studio','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(16,'Manuel Zambrano','mzambrano@hardware-mod.net','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(17,'Adriana Fuentes','afuentes@fintech-solutions.io','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(18,'Hector Navas','hnavas@networks.net','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(19,'Yelitza Medina','ymedina@ecommerce-pro.com','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(20,'Katherin Bracho','kbracho@ai-developer.net','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(21,'Eduardo Vasquez','eduardo.vasquez@devsys.io','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(22,'Mariela Pinto','mpinto@software-craft.net','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(23,'Gustavo Adolfo Bécquer','gbecquer@poetic-code.org','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(24,'Lorena Benitez','lbenitez@cloud-architect.io','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(25,'Mauricio Ramones','mramones@linux-admin.ve','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(26,'Adriana Paez','apaez@frontend-pro.com','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(27,'Leonardo Da Vinci','ldavinci@engineering-master.org','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(28,'Valeska Rondón','vrondon@cyber-defense.net','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(29,'Santiago Gamboa','sgamboa@backend-experts.io','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(30,'Natasha Romanova','nromanova@security-audit.com','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(31,'Ernesto Guevara','eguevara@opensource-dev.org','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(32,'Victoria Secretan','vsecretan@ux-research.net','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(33,'Federico Nietv','fnietzche@philosophy-code.io','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(34,'Camila Valenzuela','cvalenzuela@fintech-dev.net','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(35,'Samuel L Jackson','sjackson@matrix-systems.org','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(36,'Antonella Rauseo','arauseo@dataminers.ve','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(37,'Dante Alighieri','dalighieri@infernal-db.net','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(38,'Jimena Araya','jaraya@web-optimization.io','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(39,'Bruno Diaz','bdiaz@gamedev-studio.org','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(40,'Katerine Soulez','ksoulez@enterprise-solutions.net','2026-08-17 14:58:16','2026-08-17 14:58:16');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `legal_agreement`
--

LOCK TABLES `legal_agreement` WRITE;
/*!40000 ALTER TABLE `legal_agreement` DISABLE KEYS */;
INSERT INTO `legal_agreement` VALUES
(1,'EULA Software Comercial','1.0.0','Términos y condiciones generales para la adquisición de licencias de software propietario bajo modelo perpetuo.',1,'2026-08-17 14:36:41'),
(2,'EULA Software Comercial','1.1.0','Actualización de cláusulas de limitación de responsabilidad y soporte técnico anual.',1,'2026-08-17 14:36:41'),
(3,'Licencia de Uso Módulos Magento','2.0.0','Acuerdo específico para la instalación, modificación y redistribución de módulos en plataformas Magento.',1,'2026-08-17 14:36:41'),
(4,'Licencia de Plugins WordPress','1.0.0','Términos de uso bajo licencia GPL v2 o superior para plugins de WordPress desarrollados por la plataforma.',1,'2026-08-17 14:36:41'),
(5,'Acuerdo de Consultoría Técnica','1.0.0','Condiciones de prestación de servicios profesionales de programación y arquitectura de software.',1,'2026-08-17 14:36:41'),
(6,'Política de Reembolsos y Devoluciones','1.0.0','Condiciones aplicables para productos digitales intangibles, fuentes y licencias descargables.',1,'2026-08-17 14:36:41'),
(7,'Contrato de Soporte Nivel 3 (SLA)','1.2.0','Tiempos de respuesta garantizados y soporte de ingeniería senior para arquitecturas críticas.',1,'2026-08-17 14:36:41'),
(8,'Términos de Uso de Assets Godot Engine','1.0.0','Licencia de uso para código fuente GDScript, scripts de generación procedural y recursos 3D.',1,'2026-08-17 14:36:41'),
(9,'Acuerdo de Confidencialidad (NDA)','1.0.0','Protección de propiedad intelectual e industrial para desarrollos a la medida y consultorías.',1,'2026-08-17 14:36:41'),
(10,'Licencia de Contenedores y Dockerfiles','1.0.0','Términos de redistribución de configuraciones DevOps, scripts Bash y entornos Fedora/Docker.',1,'2026-08-17 14:36:41'),
(11,'Condiciones de Pago en Criptomonedas (USDT)','1.0.0','Protocolo de validación y confirmación de transacciones basadas en redes TRC20/ERC20.',1,'2026-08-17 14:36:41'),
(12,'Política de Privacidad y Datos (GDPR)','2.1.0','Tratamiento, almacenamiento y protección de datos personales de clientes y administradores.',1,'2026-08-17 14:36:41'),
(13,'Licencia de Librerías Open Source PHP/Rust','1.0.0','Términos de uso para componentes desarrollados en lenguajes modernos de alto rendimiento.',1,'2026-08-17 14:36:41'),
(14,'Acuerdo de Mantenimiento de Bases de Datos','1.0.0','Condiciones para optimización, indexación y escalabilidad de bases de datos MySQL/PostgreSQL.',1,'2026-08-17 14:36:41'),
(15,'Licencia de Uso para Aplicaciones Android','1.0.0','Términos de distribución de binarios APK y código fuente móvil para sistemas POS.',1,'2026-08-17 14:36:41'),
(16,'Términos de Promociones y Descuentos','1.0.0','Reglas para cupones, campañas de temporada y programas de referidos.',1,'2026-08-17 14:36:41'),
(17,'Contrato de Servicios Cloud (Vercel/Supabase)','1.0.0','Condiciones operativas sobre infraestructura serverless y arquitecturas distribuidas.',1,'2026-08-17 14:36:41'),
(18,'Acuerdo de Transferencia de Propiedad Intelectual','1.0.0','Cláusulas de cesión de derechos de autor para desarrollos exclusivos de código fuente.',1,'2026-08-17 14:36:41'),
(19,'Licencia Educativa y Académica','1.0.0','Condiciones especiales de descuento para estudiantes y universidades en herramientas de programación.',1,'2026-08-17 14:36:41'),
(20,'Términos Generales de la Plataforma','3.0.0','Condiciones maestras que rigen el uso general del e-commerce y pasarelas de pago.',1,'2026-08-17 14:36:41');
/*!40000 ALTER TABLE `legal_agreement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES
(1,'/uploads/media/products/magento-module-auth.png','Módulo de Autenticación Avanzada Magento 2','2026-08-17 14:36:41'),
(2,'/uploads/media/products/wp-plugin-seo.jpg','Plugin SEO Enterprise para WordPress','2026-08-17 14:36:41'),
(3,'/uploads/media/products/godot-spline-bridge.webp','Generador Procedural de Puentes Godot 4','2026-08-17 14:36:41'),
(4,'/uploads/media/products/php-orm-micro.png','Librería ORM de Alto Rendimiento PHP','2026-08-17 14:36:41'),
(5,'/uploads/media/products/docker-devops-kit.jpg','Kit de Contenedores Docker para Producción','2026-08-17 14:36:41'),
(6,'/uploads/media/products/rust-microservice.png','Plantilla de Microservicios en Rust','2026-08-17 14:36:41'),
(7,'/uploads/media/products/cplusplus-engine.jpg','Motor 3D Base en C++','2026-08-17 14:36:41'),
(8,'/uploads/media/products/consulting-hours.png','Bolsa de Horas de Consultoría Senior','2026-08-17 14:36:41'),
(9,'/uploads/media/products/android-pos-app.webp','App Android de Punto de Venta','2026-08-17 14:36:41'),
(10,'/uploads/media/products/laravel-saas-boilerplate.jpg','Boilerplate SaaS en Laravel 11','2026-08-17 14:36:41'),
(11,'/uploads/media/categories/cat-magento.png','Icono Categoría Módulos Magento','2026-08-17 14:36:41'),
(12,'/uploads/media/categories/cat-wordpress.png','Icono Categoría Plugins WordPress','2026-08-17 14:36:41'),
(13,'/uploads/media/categories/cat-godot.png','Icono Categoría Assets Godot Engine','2026-08-17 14:36:41'),
(14,'/uploads/media/categories/cat-devops.png','Icono Categoría DevOps y Servidores','2026-08-17 14:36:41'),
(15,'/uploads/media/categories/cat-consulting.png','Icono Categoría Consultoría Técnica','2026-08-17 14:36:41'),
(16,'/uploads/media/seo/og-default-store.jpg','Imagen OpenGraph por Defecto DevStore','2026-08-17 14:36:41'),
(17,'/uploads/media/banners/promo-summer-sale.webp','Banner Promocional de Verano','2026-08-17 14:36:41'),
(18,'/uploads/media/banners/banner-enterprise.jpg','Banner Soluciones Enterprise','2026-08-17 14:36:41'),
(19,'/uploads/media/agreements/terms-icon.png','Icono Acuerdos Legales de Licenciamiento','2026-08-17 14:36:41'),
(20,'/uploads/media/system/logo-brand.png','Logotipo Oficial del Sistema','2026-08-17 14:36:41');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES
(1,1,1,49.99,1),
(2,2,2,39.99,1),
(3,3,3,29.99,1),
(4,4,4,25.00,1),
(5,5,5,59.99,1),
(6,6,6,79.99,1),
(7,7,7,99.99,1),
(8,8,8,120.00,1),
(9,9,9,149.99,1),
(10,10,10,89.99,1),
(11,11,11,69.99,1),
(12,12,12,45.00,1),
(13,13,13,34.99,1),
(14,14,14,29.99,1),
(15,15,15,19.99,1),
(16,16,16,65.00,1),
(17,17,17,55.00,1),
(18,18,18,1000.00,1),
(19,19,19,75.00,1),
(20,20,20,49.99,1),
(21,20,20,59.99,1),
(22,21,21,49.99,1),
(23,22,22,39.99,1),
(24,23,23,35.00,1),
(25,24,24,69.99,1),
(26,25,25,89.99,1),
(27,26,26,109.99,1),
(28,27,27,130.00,1),
(29,28,28,159.99,1),
(30,29,29,99.99,1),
(31,30,30,79.99,1),
(32,31,31,55.00,1),
(33,32,32,45.00,1),
(34,33,33,39.99,1),
(35,34,34,29.99,1),
(36,35,35,75.00,1),
(37,36,36,65.00,1),
(38,37,37,1100.00,1),
(39,38,38,85.00,1),
(40,39,39,59.99,1);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `order_legal_acceptance`
--

LOCK TABLES `order_legal_acceptance` WRITE;
/*!40000 ALTER TABLE `order_legal_acceptance` DISABLE KEYS */;
INSERT INTO `order_legal_acceptance` VALUES
(1,1,1,3,'2026-08-17 14:36:41'),
(2,2,2,4,'2026-08-17 14:36:41'),
(3,3,3,8,'2026-08-17 14:36:41'),
(4,4,4,13,'2026-08-17 14:36:41'),
(5,5,5,10,'2026-08-17 14:36:41'),
(6,6,6,13,'2026-08-17 14:36:41'),
(7,7,7,1,'2026-08-17 14:36:41'),
(8,8,8,5,'2026-08-17 14:36:41'),
(9,9,9,15,'2026-08-17 14:36:41'),
(10,10,10,1,'2026-08-17 14:36:41'),
(11,11,11,3,'2026-08-17 14:36:41'),
(12,12,12,4,'2026-08-17 14:36:41'),
(13,13,13,8,'2026-08-17 14:36:41'),
(14,14,14,13,'2026-08-17 14:36:41'),
(15,15,15,10,'2026-08-17 14:36:41'),
(16,16,16,13,'2026-08-17 14:36:41'),
(17,17,17,1,'2026-08-17 14:36:41'),
(18,18,18,5,'2026-08-17 14:36:41'),
(19,19,19,15,'2026-08-17 14:36:41'),
(20,20,20,1,'2026-08-17 14:36:41'),
(21,20,20,3,'2026-08-17 14:58:16'),
(22,21,21,4,'2026-08-17 14:58:16'),
(23,22,22,8,'2026-08-17 14:58:16'),
(24,23,23,13,'2026-08-17 14:58:16'),
(25,24,24,10,'2026-08-17 14:58:16'),
(26,25,25,13,'2026-08-17 14:58:16'),
(27,26,26,1,'2026-08-17 14:58:16'),
(28,27,27,5,'2026-08-17 14:58:16'),
(29,28,28,15,'2026-08-17 14:58:16'),
(30,29,29,1,'2026-08-17 14:58:16'),
(31,30,30,3,'2026-08-17 14:58:16'),
(32,31,31,4,'2026-08-17 14:58:16'),
(33,32,32,8,'2026-08-17 14:58:16'),
(34,33,33,13,'2026-08-17 14:58:16'),
(35,34,34,10,'2026-08-17 14:58:16'),
(36,35,35,13,'2026-08-17 14:58:16'),
(37,36,36,1,'2026-08-17 14:58:16'),
(38,37,37,5,'2026-08-17 14:58:16'),
(39,38,38,15,'2026-08-17 14:58:16'),
(40,39,39,1,'2026-08-17 14:58:16');
/*!40000 ALTER TABLE `order_legal_acceptance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES
(1,1,10001,49.99,36.5000,'USD','complete','completed','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(2,2,10002,39.99,36.5000,'USD','processing','verified','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(3,3,10003,29.99,36.5000,'USD','new','pending','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(4,4,10004,25.00,36.5000,'USD','complete','completed','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(5,5,10005,59.99,36.5000,'USD','processing','verified','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(6,6,10006,79.99,36.5000,'USD','complete','completed','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(7,7,10007,99.99,36.5000,'USD','new','pending','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(8,8,10008,120.00,36.5000,'USD','processing','verified','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(9,9,10009,149.99,36.5000,'USD','complete','completed','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(10,10,10010,89.99,36.5000,'USD','complete','completed','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(11,11,10011,69.99,36.5000,'USD','new','pending','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(12,12,10012,45.00,36.5000,'USD','processing','verified','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(13,13,10013,34.99,36.5000,'USD','complete','completed','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(14,14,10014,29.99,36.5000,'USD','new','pending','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(15,15,10015,19.99,36.5000,'USD','complete','completed','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(16,16,10016,65.00,36.5000,'USD','processing','verified','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(17,17,10017,55.00,36.5000,'USD','complete','completed','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(18,18,10018,1000.00,36.5000,'USD','processing','verified','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(19,19,10019,75.00,36.5000,'USD','new','pending','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(20,20,10020,49.99,36.5000,'USD','complete','completed','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(21,20,20001,59.99,36.5000,'USD','complete','completed','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(22,21,20002,49.99,36.5000,'USD','processing','verified','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(23,22,20003,39.99,36.5000,'USD','new','pending','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(24,23,20004,35.00,36.5000,'USD','complete','completed','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(25,24,20005,69.99,36.5000,'USD','processing','verified','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(26,25,20006,89.99,36.5000,'USD','complete','completed','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(27,26,20007,109.99,36.5000,'USD','new','pending','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(28,27,20008,130.00,36.5000,'USD','processing','verified','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(29,28,20009,159.99,36.5000,'USD','complete','completed','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(30,29,20010,99.99,36.5000,'USD','complete','completed','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(31,30,20011,79.99,36.5000,'USD','new','pending','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(32,31,20012,55.00,36.5000,'USD','processing','verified','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(33,32,20013,45.00,36.5000,'USD','complete','completed','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(34,33,20014,39.99,36.5000,'USD','new','pending','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(35,34,20015,29.99,36.5000,'USD','complete','completed','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(36,35,20016,75.00,36.5000,'USD','processing','verified','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(37,36,20017,65.00,36.5000,'USD','complete','completed','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(38,37,20018,1100.00,36.5000,'USD','processing','verified','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(39,38,20019,85.00,36.5000,'USD','new','pending','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(40,39,20020,59.99,36.5000,'USD','complete','completed','2026-08-17 14:58:16','2026-08-17 14:58:16');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `payment_method`
--

LOCK TABLES `payment_method` WRITE;
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;
INSERT INTO `payment_method` VALUES
(1,'USDT TRC20','usdt_trc20',1),
(2,'Pago Móvil Venezuela','pago_movil_ve',1),
(3,'Transferencia Bancaria Nacional','bank_transfer_ve',1),
(4,'Zelle','zelle',1),
(5,'PayPal Enterprise','paypal',1),
(6,'Binance Pay','binance_pay',1),
(7,'Bitcoin Lightning','btc_lightning',1),
(8,'Ethereum ERC20','eth_erc20',1),
(9,'Tarjeta de Crédito Internacional','credit_card',1),
(10,'Stripe Gateway','stripe',1),
(11,'Transferwise / Wise','wise',1),
(12,'Zinli','zinli',1),
(13,'Wally Tech','wally',1),
(14,'Reserve App','reserve',1),
(15,'AirTM','airtm',1),
(16,'Payoneer','payoneer',1),
(17,'Skrill','skrill',1),
(18,'Neteller','neteller',1),
(19,'Efectivo Divisas','cash_usd',1),
(20,'Pago en Bolívares Tasa BCV','bcv_transfer',1);
/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `payment_transaction`
--

LOCK TABLES `payment_transaction` WRITE;
/*!40000 ALTER TABLE `payment_transaction` DISABLE KEYS */;
INSERT INTO `payment_transaction` VALUES
(1,1,1,49.99,'USDT','completed','TXN-TRC20-984213','/uploads/receipts/rec_01.jpg','{\"txid\": \"0xabc123\", \"network\": \"TRON\", \"status\": \"CONFIRMED\"}','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(2,2,2,1461.63,'VES','verified','01425896','/uploads/receipts/rec_02.jpg','{\"bank\": \"0102\", \"phone\": \"04141234567\", \"status\": \"VERIFIED\"}','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(3,3,3,1094.85,'VES','pending','99887766',NULL,'{\"bank\": \"0134\", \"status\": \"PENDING_CHECK\"}','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(4,4,4,25.00,'USD','completed','ZELLE-REF-55412','/uploads/receipts/rec_04.jpg','{\"confirmation\": \"ZL-9988\", \"status\": \"SUCCESS\"}','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(5,5,5,59.99,'USD','verified','PP-PAY-887766','/uploads/receipts/rec_05.jpg','{\"payer\": \"client@test.com\", \"status\": \"COMPLETED\"}','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(6,6,6,79.99,'USDT','completed','BP-PAY-33214','/uploads/receipts/rec_06.jpg','{\"order_id\": \"bp_9988\", \"status\": \"PAID\"}','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(7,7,7,99.99,'BTC','pending','LN-INVOICE-7788',NULL,'{\"preimage\": null, \"status\": \"WAITING\"}','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(8,8,8,120.00,'ETH','verified','0xeth998877','/uploads/receipts/rec_08.jpg','{\"gas_used\": \"21000\", \"status\": \"VERIFIED\"}','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(9,9,9,149.99,'USD','completed','CC-AUTH-441122','/uploads/receipts/rec_09.jpg','{\"auth_code\": \"992211\", \"status\": \"APPROVED\"}','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(10,10,10,89.99,'USD','completed','STRIPE-PI-1122','/uploads/receipts/rec_10.jpg','{\"charge_id\": \"ch_1234\", \"status\": \"SUCCEEDED\"}','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(11,11,11,69.99,'USD','pending','WISE-REF-0012',NULL,'{\"transfer_id\": \"ws_998\", \"status\": \"PROCESSING\"}','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(12,12,12,45.00,'USD','verified','ZINLI-REF-4455','/uploads/receipts/rec_12.jpg','{\"email\": \"client@zinli.com\", \"status\": \"VERIFIED\"}','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(13,13,13,34.99,'USD','completed','WALLY-REF-7788','/uploads/receipts/rec_13.jpg','{\"status\": \"SUCCESS\"}','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(14,14,14,29.99,'USD','pending','RES-REF-3344',NULL,'{\"status\": \"PENDING\"}','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(15,15,15,19.99,'USD','completed','AIRTM-REF-5566','/uploads/receipts/rec_15.jpg','{\"status\": \"COMPLETED\"}','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(16,16,16,65.00,'USD','verified','PAYONEER-8899','/uploads/receipts/rec_16.jpg','{\"status\": \"VERIFIED\"}','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(17,17,17,55.00,'USD','completed','SKRILL-112233','/uploads/receipts/rec_17.jpg','{\"status\": \"PROCESSED\"}','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(18,18,18,1000.00,'USD','verified','NETELLER-4455','/uploads/receipts/rec_18.jpg','{\"status\": \"VERIFIED\"}','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(19,19,19,75.00,'USD','pending','CASH-REF-001',NULL,'{\"status\": \"PENDING_RECEPTION\"}','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(20,20,20,1824.50,'VES','completed','BCV-REF-998877','/uploads/receipts/rec_20.jpg','{\"tasa_bcv\": 36.50, \"status\": \"COMPLETED\"}','2026-08-17 14:36:41','2026-08-17 14:36:41'),
(21,20,1,59.99,'USDT','completed','TXN-TRC20-V2-01','/uploads/receipts/rec_v2_01.jpg','{\"txid\": \"0x111abc\", \"network\": \"TRON\", \"status\": \"CONFIRMED\"}','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(22,21,2,1814.63,'VES','verified','02458963','/uploads/receipts/rec_v2_02.jpg','{\"bank\": \"0102\", \"status\": \"VERIFIED\"}','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(23,22,3,1461.63,'VES','pending','11223344',NULL,'{\"bank\": \"0134\", \"status\": \"PENDING\"}','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(24,23,4,35.00,'USD','completed','ZELLE-V2-55','/uploads/receipts/rec_v2_04.jpg','{\"status\": \"SUCCESS\"}','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(25,24,5,69.99,'USD','verified','PP-V2-8877','/uploads/receipts/rec_v2_05.jpg','{\"status\": \"COMPLETED\"}','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(26,25,6,89.99,'USDT','completed','BP-V2-3322','/uploads/receipts/rec_v2_06.jpg','{\"status\": \"PAID\"}','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(27,26,7,109.99,'BTC','pending','LN-V2-7788',NULL,'{\"status\": \"WAITING\"}','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(28,27,8,130.00,'ETH','verified','0xethv299','/uploads/receipts/rec_v2_08.jpg','{\"status\": \"VERIFIED\"}','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(29,28,9,159.99,'USD','completed','CC-V2-4411','/uploads/receipts/rec_v2_09.jpg','{\"status\": \"APPROVED\"}','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(30,29,10,99.99,'USD','completed','STRIPE-V2-11','/uploads/receipts/rec_v2_10.jpg','{\"status\": \"SUCCEEDED\"}','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(31,30,11,79.99,'USD','pending','WISE-V2-00',NULL,'{\"status\": \"PROCESSING\"}','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(32,31,12,55.00,'USD','verified','ZINLI-V2-44','/uploads/receipts/rec_v2_12.jpg','{\"status\": \"VERIFIED\"}','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(33,32,13,45.00,'USD','completed','WALLY-V2-77','/uploads/receipts/rec_v2_13.jpg','{\"status\": \"SUCCESS\"}','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(34,33,14,39.99,'USD','pending','RES-V2-3344',NULL,'{\"status\": \"PENDING\"}','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(35,34,15,29.99,'USD','completed','AIRTM-V2-55','/uploads/receipts/rec_v2_15.jpg','{\"status\": \"COMPLETED\"}','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(36,35,16,75.00,'USD','verified','PAYONEER-V2','/uploads/receipts/rec_v2_16.jpg','{\"status\": \"VERIFIED\"}','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(37,36,17,65.00,'USD','completed','SKRILL-V2-11','/uploads/receipts/rec_v2_17.jpg','{\"status\": \"PROCESSED\"}','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(38,37,18,1100.00,'USD','verified','NETELLER-V2','/uploads/receipts/rec_v2_18.jpg','{\"status\": \"VERIFIED\"}','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(39,38,19,85.00,'USD','pending','CASH-V2-01',NULL,'{\"status\": \"PENDING_RECEPTION\"}','2026-08-17 14:58:16','2026-08-17 14:58:16'),
(40,39,20,2189.63,'VES','completed','BCV-V2-9988','/uploads/receipts/rec_v2_20.jpg','{\"tasa_bcv\": 36.50, \"status\": \"COMPLETED\"}','2026-08-17 14:58:16','2026-08-17 14:58:16');
/*!40000 ALTER TABLE `payment_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES
(1,'MAG-AUTH-001',1,1,'Magento 2 Advanced Auth Module','Módulo de autenticación ultra rápido para Magento 2.','Módulo optimizado en velocidad y bajo consumo de memoria para gestión de sesiones y clientes en Magento 2.',49.99,1,'magento-2-advanced-auth',3,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(2,'WP-SEO-002',2,2,'WordPress SEO Enterprise Plugin','Plugin de optimización SEO y metadatos.','Plugin diseñado para máxima velocidad de carga, gestión de URLs canónicas y Open Graph para WordPress.',39.99,1,'wordpress-seo-enterprise',4,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(3,'GOD-SPL-003',3,3,'Godot 4 Procedural Bridge & River Generator','Generador procedural de puentes y ríos por splines en Godot 4.','Herramienta en GDScript para la creación dinámica de estructuras de puentes y cauces de agua con física de volumen.',29.99,1,'godot-procedural-bridge-generator',8,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(4,'PHP-ORM-004',6,4,'High-Performance Micro ORM PHP','ORM ligero en PHP para máxima velocidad transaccional.','Librería de mapeo objeto-relacional optimizada para consumir menos memoria y acelerar consultas SQL complejas.',25.00,1,'high-performance-micro-orm-php',13,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(5,'DEV-DOCK-005',4,5,'Production Docker Kit for Fedora/Linux','Kit de contenedores Docker optimizados para Linux.','Configuraciones de contenedores listas para producción con enfoque en rendimiento, seguridad y bajo uso de RAM.',59.99,1,'production-docker-kit-fedora',10,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(6,'RUST-MS-006',7,6,'Rust Microservice Starter Boilerplate','Plantilla base para microservicios ultrarrápidos en Rust.','Estructura modular orientada al procesamiento concurrente masivo con consumo de memoria mínimo.',79.99,1,'rust-microservice-starter',13,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(7,'CPP-ENG-007',8,7,'C++ Core 3D Engine Architecture','Arquitectura base de motor 3D en C++ moderno.','Subsistemas de gestión de memoria, renderizado y matemáticas optimizados para desarrollo de videojuegos.',99.99,1,'cpp-core-3d-engine',1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(8,'CONS-HR-008',5,8,'1 Hour Senior Programming Consultancy','Sesión de consultoría técnica con arquitecto senior.','Una hora de asesoría especializada en bases de datos, refactorización, optimización y arquitectura de software.',120.00,1,'1-hour-senior-consultancy',5,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(9,'AND-POS-009',9,9,'Android Native POS Terminal App','Aplicación POS en Android para pasarelas de pago.','App optimizada para dispositivos móviles con soporte offline, impresión térmica y sincronización segura.',149.99,1,'android-native-pos-app',15,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(10,'LAR-SAAS-010',10,10,'Laravel 11 SaaS Boilerplate Enterprise','Boilerplate completo para desarrollo de SaaS en Laravel.','Sistema base con autenticación, pasarelas de pago, gestión de planes y panel administrativo optimizado.',89.99,1,'laravel-11-saas-boilerplate',1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(11,'MAG-CART-011',1,1,'Magento 2 Optimized JSON Cart Module','Módulo de carrito de compras basado en estructura JSON.','Acelera el proceso de checkout y reduce las escrituras en disco en tiendas Magento de alto tráfico.',69.99,1,'magento-2-optimized-json-cart',3,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(12,'WP-SEC-012',2,2,'WordPress Hardening & Security Shield','Plugin de seguridad avanzada para WordPress.','Protección contra ataques de inyección, fuerza bruta y escaneo de vulnerabilidades sin ralentizar el sitio.',45.00,1,'wordpress-security-shield',4,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(13,'GOD-CAVE-013',3,3,'Godot 3D Procedural Cave Generator','Generador procedural de cuevas 3D en Godot.','Algoritmo en GDScript altamente optimizado para la creación dinámica de topografías subterráneas y rutas.',34.99,1,'godot-procedural-cave-generator',8,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(14,'PHP-CACHE-014',6,4,'PHP Memory Cache Manager','Gestor de caché en memoria de alto rendimiento.','Componente PHP ligero para almacenamiento temporal de consultas y objetos con cero dependencias pesadas.',29.99,1,'php-memory-cache-manager',13,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(15,'DEV-MON-015',4,5,'Linux Server Health & UPS Monitor','Script de monitoreo para servidores y mini UPS.','Herramientas en Python y Bash para control de energía, temperatura y estado de dispositivos de respaldo.',19.99,1,'linux-server-ups-monitor',10,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(16,'RUST-API-016',7,6,'Rust REST API High-Speed Gateway','Gateway de API en Rust con autenticación por tokens.','Servidor web ultrarrápido para validación de tokens y redireccionamiento de peticiones con bajo overhead.',65.00,1,'rust-rest-api-gateway',13,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(17,'CPP-PHYS-017',8,7,'C++ Custom Physics & Spline Library','Librería de físicas y splines en C++.','Cálculos matemáticos optimizados para trayectorias, curvas Bézier y colisiones en tiempo real.',55.00,1,'cpp-custom-physics-library',1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(18,'CONS-PKG-018',5,8,'10 Hours Enterprise Architecture Package','Paquete de 10 horas de consultoría y arquitectura.','Asesoría intensiva para diseño de bases de datos, auditoría de código y optimización de servidores.',1000.00,1,'10-hours-architecture-package',5,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(19,'AND-SYNC-019',9,9,'Android Offline SQLite Sync Engine','Motor de sincronización SQLite para Android.','Librería para mantener consistencia de datos locales y remotos en aplicaciones móviles de misión crítica.',75.00,1,'android-offline-sync-engine',15,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(20,'LAR-API-020',10,10,'Laravel REST API Generator Package','Generador automático de APIs RESTful en Laravel.','Componente para creación rápida de endpoints seguros, validados y documentados automáticamente.',49.99,1,'laravel-rest-api-generator',1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(21,'MAG-AUTH-V2',1,1,'Magento 2 Advanced Auth V2','Módulo de autenticación optimizado v2 para Magento 2.','Evolución del módulo de autenticación con menor uso de memoria y mayor velocidad transaccional.',59.99,1,'magento-2-advanced-auth-v2',3,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(22,'WP-SEO-PRO-V2',2,2,'WordPress SEO Enterprise Pro V2','Plugin avanzado de SEO y metadatos dinámicos.','Optimizado para cargas concurrentes masivas en blogs corporativos y e-commerce WordPress.',49.99,1,'wordpress-seo-enterprise-pro-v2',4,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(23,'GOD-CAVE-V2',3,3,'Godot 4 Procedural Cave Generator V2','Generador avanzado de cuevas y mapas 3D.','Algoritmo GDScript mejorado para cálculo de mallas y topografías subterráneas dinámicas.',39.99,1,'godot-procedural-cave-generator-v2',8,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(24,'PHP-ORM-V2',6,4,'High-Performance Micro ORM PHP V2','ORM ultraligero en PHP para consultas complejas.','Reducción drástica de overhead y consumo de RAM en operaciones SQL repetitivas.',35.00,1,'high-performance-micro-orm-php-v2',13,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(25,'DEV-DOCK-V2',4,5,'Production Docker Kit Fedora V2','Contenedores Docker optimizados para Linux.','Configuraciones de despliegue rápido con auditoría de seguridad integrada y bajo consumo.',69.99,1,'production-docker-kit-fedora-v2',10,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(26,'RUST-MS-V2',7,6,'Rust Microservice Starter V2','Plantilla avanzada para microservicios en Rust.','Arquitectura concurrente segura con gestión de memoria optimizada a nivel de sistema operativo.',89.99,1,'rust-microservice-starter-v2',13,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(27,'CPP-ENG-V2',8,7,'C++ Core 3D Engine Architecture V2','Subsistemas gráficos y de físicas en C++.','Estructuras base para motores de videojuegos orientadas al rendimiento máximo de hardware.',109.99,1,'cpp-core-3d-engine-v2',1,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(28,'CONS-HR-V2',5,8,'1 Hour Senior Architecture Advisory','Asesoría experta en bases de datos y backend.','Sesión técnica enfocada en refactorización de código crítico y diseño de esquemas normalizados.',130.00,1,'1-hour-senior-architecture-advisory',5,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(29,'AND-POS-V2',9,9,'Android Native POS Terminal V2','Aplicación POS en Android con soporte offline.','Sincronización local de bases de datos SQLite y gestión optimizada de impresoras térmicas.',159.99,1,'android-native-pos-app-v2',15,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(30,'LAR-SAAS-V2',10,10,'Laravel 11 SaaS Boilerplate V2','Boilerplate empresarial con autenticación robusta.','Sistema base completo con pasarelas de pago multi-moneda y panel administrativo limpio.',99.99,1,'laravel-11-saas-boilerplate-v2',1,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(31,'MAG-CART-V2',1,1,'Magento 2 JSON Cart Engine V2','Gestión acelerada de carritos en formato JSON.','Elimina bloqueos de escritura en base de datos durante picos de tráfico en Magento.',79.99,1,'magento-2-json-cart-engine-v2',3,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(32,'WP-SEC-V2',2,2,'WordPress Hardening Shield V2','Escudo de seguridad y prevención de ataques.','Protección activa contra fuerza bruta e inyecciones sin penalizar la velocidad de carga.',55.00,1,'wordpress-hardening-shield-v2',4,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(33,'GOD-SPL-V2',3,3,'Godot 4 Spline River & Bridge V2','Generador procedural de cauces y puentes.','Física de volúmenes de agua y splines dinámicos optimizados para Godot 4.',45.00,1,'godot-spline-river-bridge-v2',8,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(34,'PHP-CACHE-V2',6,4,'PHP Memory Cache Component V2','Componente de caché en memoria de alto rendimiento.','Almacenamiento temporal ultra rápido sin dependencias externas pesadas.',39.99,1,'php-memory-cache-component-v2',13,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(35,'DEV-MON-V2',4,5,'Linux Server & UPS Monitor V2','Herramientas de monitoreo de energía y servidores.','Scripts en Python y Bash para control preventivo de hardware y mini UPS.',29.99,1,'linux-server-ups-monitor-v2',10,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(36,'RUST-API-V2',7,6,'Rust REST API Gateway V2','Gateway de alta velocidad con validación de tokens.','Servidor web ultrarrápido para redireccionamiento seguro de peticiones API.',75.00,1,'rust-rest-api-gateway-v2',13,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(37,'CPP-PHYS-V2',8,7,'C++ Custom Spline Physics V2','Librería matemática de trayectorias y colisiones.','Cálculos de físicas en tiempo real optimizados para arquitecturas modernas.',65.00,1,'cpp-custom-spline-physics-v2',1,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(38,'CONS-PKG-V2',5,8,'10 Hours Architecture Package V2','Paquete intensivo de consultoría y auditoría.','Revisión exhaustiva de bases de datos, índices y rendimiento de servidores backend.',1100.00,1,'10-hours-architecture-package-v2',5,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(39,'AND-SYNC-V2',9,9,'Android Offline SQLite Engine V2','Motor de sincronización para aplicaciones móviles.','Consistencia garantizada entre bases de datos locales SQLite y servidores remotos.',85.00,1,'android-offline-sync-engine-v2',15,'2026-08-17 14:58:16','2026-08-17 14:58:16'),
(40,'LAR-API-V2',10,10,'Laravel REST API Generator V2','Generador automatizado de endpoints seguros.','Creación rápida de APIs documentadas y validadas bajo estándares enterprise.',59.99,1,'laravel-rest-api-generator-v2',1,'2026-08-17 14:58:16','2026-08-17 14:58:16');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `seo_metadata`
--

LOCK TABLES `seo_metadata` WRITE;
/*!40000 ALTER TABLE `seo_metadata` DISABLE KEYS */;
INSERT INTO `seo_metadata` VALUES
(1,'https://devstore.local/products/magento-2-advanced-auth','Magento 2 Advanced Auth | DevStore','Módulo de autenticación ultra rápido para Magento 2.','P',1,'Magento 2 Advanced Auth','Módulo de autenticación ultra rápido para Magento 2.',1,1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(2,'https://devstore.local/products/wordpress-seo-enterprise','WordPress SEO Enterprise | DevStore','Plugin de optimización SEO y metadatos para WordPress.','P',2,'WordPress SEO Enterprise','Plugin de optimización SEO y metadatos para WordPress.',2,1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(3,'https://devstore.local/products/godot-procedural-bridge-generator','Godot Procedural Bridge Generator | DevStore','Generador procedural de puentes y ríos por splines en Godot 4.','P',3,'Godot Procedural Bridge Generator','Generador procedural de puentes y ríos por splines en Godot 4.',3,1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(4,'https://devstore.local/products/high-performance-micro-orm-php','High-Performance Micro ORM PHP | DevStore','ORM ligero en PHP para máxima velocidad transaccional.','P',4,'High-Performance Micro ORM PHP','ORM ligero en PHP para máxima velocidad transaccional.',4,1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(5,'https://devstore.local/products/production-docker-kit-fedora','Production Docker Kit | DevStore','Kit de contenedores Docker optimizados para Linux Fedora.','P',5,'Production Docker Kit','Kit de contenedores Docker optimizados para Linux Fedora.',5,1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(6,'https://devstore.local/products/rust-microservice-starter','Rust Microservice Starter | DevStore','Plantilla base para microservicios ultrarrápidos en Rust.','P',6,'Rust Microservice Starter','Plantilla base para microservicios ultrarrápidos en Rust.',6,1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(7,'https://devstore.local/products/cpp-core-3d-engine','C++ Core 3D Engine | DevStore','Arquitectura base de motor 3D en C++ moderno.','P',7,'C++ Core 3D Engine','Arquitectura base de motor 3D en C++ moderno.',7,1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(8,'https://devstore.local/products/1-hour-senior-consultancy','Consultoría Senior 1 Hora | DevStore','Sesión de consultoría técnica con arquitecto senior.','P',8,'Consultoría Senior 1 Hora','Sesión de consultoría técnica con arquitecto senior.',8,1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(9,'https://devstore.local/products/android-native-pos-app','Android Native POS App | DevStore','Aplicación POS en Android para pasarelas de pago.','P',9,'Android Native POS App','Aplicación POS en Android para pasarelas de pago.',9,1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(10,'https://devstore.local/products/laravel-11-saas-boilerplate','Laravel 11 SaaS Boilerplate | DevStore','Boilerplate completo para desarrollo de SaaS en Laravel.','P',10,'Laravel 11 SaaS Boilerplate','Boilerplate completo para desarrollo de SaaS en Laravel.',10,1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(11,'https://devstore.local/categories/modulos-magento','Módulos Magento 2 Optimizados | DevStore','Extensiones avanzadas y optimizadas para Magento 2.','C',1,'Módulos Magento 2','Extensiones avanzadas y optimizadas para Magento 2.',11,1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(12,'https://devstore.local/categories/plugins-wordpress','Plugins WordPress SEO | DevStore','Plugins profesionales orientados a SEO y rendimiento.','C',2,'Plugins WordPress SEO','Plugins profesionales orientados a SEO y rendimiento.',12,1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(13,'https://devstore.local/categories/godot-assets','Godot Assets & Scripts | DevStore','Scripts y herramientas de generación procedural en Godot.','C',3,'Godot Assets & Scripts','Scripts y herramientas de generación procedural en Godot.',13,1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(14,'https://devstore.local/categories/devops-docker','DevOps & Docker Kits | DevStore','Infraestructura como código y contenedores optimizados.','C',4,'DevOps & Docker Kits','Infraestructura como código y contenedores optimizados.',14,1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(15,'https://devstore.local/categories/consultoria-senior','Consultoría Senior Técnica | DevStore','Horas de consultoría técnica con arquitecto senior.','C',5,'Consultoría Senior','Horas de consultoría técnica con arquitecto senior.',15,1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(16,'https://devstore.local/categories/librerias-php','Librerías PHP & Frameworks | DevStore','Componentes y micro-frameworks en PHP moderno.','C',6,'Librerías PHP','Componentes y micro-frameworks en PHP moderno.',11,1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(17,'https://devstore.local/categories/microservicios-rust','Microservicios en Rust | DevStore','Bases y servicios de alto rendimiento en Rust.','C',7,'Microservicios en Rust','Bases y servicios de alto rendimiento en Rust.',13,1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(18,'https://devstore.local/categories/motores-cplusplus','Motores 3D en C++ | DevStore','Estructuras base para motores gráficos y videojuegos.','C',8,'Motores 3D en C++','Estructuras base para motores gráficos y videojuegos.',13,1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(19,'https://devstore.local/categories/apps-android','Apps Android Nativas | DevStore','Soluciones móviles y sistemas POS para Android.','C',9,'Apps Android','Soluciones móviles y sistemas POS para Android.',12,1,'2026-08-17 14:36:41','2026-08-17 14:36:41'),
(20,'https://devstore.local/categories/boilerplates-saas','Boilerplates SaaS | DevStore','Plantillas de inicio rápido para aplicaciones SaaS.','C',10,'Boilerplates SaaS','Plantillas de inicio rápido para aplicaciones SaaS.',11,1,'2026-08-17 14:36:41','2026-08-17 14:36:41');
/*!40000 ALTER TABLE `seo_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES
('admin_email','admin@devstore.local','contact','2026-08-17 14:36:41'),
('api_rate_limit','1000','api','2026-08-17 14:36:41'),
('backup_auto_frequency','daily','system','2026-08-17 14:36:41'),
('currency_default','USD','finance','2026-08-17 14:36:41'),
('debug_mode','1','system','2026-08-17 14:36:41'),
('invoice_prefix','INV-2026-','finance','2026-08-17 14:36:41'),
('mail_host','smtp.mailtrap.io','mail','2026-08-17 14:36:41'),
('mail_pass','mock_pass_key','mail','2026-08-17 14:36:41'),
('mail_port','2525','mail','2026-08-17 14:36:41'),
('mail_user','mock_user_key','mail','2026-08-17 14:36:41'),
('maintenance_mode','0','system','2026-08-17 14:36:41'),
('max_login_attempts','5','security','2026-08-17 14:36:41'),
('payment_usdt_wallet','0x71C...B29','payment','2026-08-17 14:36:41'),
('seo_meta_keywords','magento modules, wordpress plugins, godot assets, php enterprise','seo','2026-08-17 14:36:41'),
('seo_robots_default','index,follow','seo','2026-08-17 14:36:41'),
('session_lifetime','86400','security','2026-08-17 14:36:41'),
('site_name','DevStore Pro Enterprise','general','2026-08-17 14:36:41'),
('site_url','https://devstore.local','general','2026-08-17 14:36:41'),
('tax_rate','0.00','finance','2026-08-17 14:36:41'),
('theme_active','material_dark','appearance','2026-08-17 14:36:41');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-17 18:34:31


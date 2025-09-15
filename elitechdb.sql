/*
 Navicat Premium Dump SQL

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : elitechdb

 Target Server Type    : MySQL
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 16/09/2025 06:50:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for audits
-- ----------------------------
DROP TABLE IF EXISTS `audits`;
CREATE TABLE `audits`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `event` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_id` bigint UNSIGNED NOT NULL,
  `old_values` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `new_values` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` varchar(1023) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `audits_auditable_type_auditable_id_index`(`auditable_type` ASC, `auditable_id` ASC) USING BTREE,
  INDEX `audits_user_id_user_type_index`(`user_id` ASC, `user_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of audits
-- ----------------------------
INSERT INTO `audits` VALUES (2, 'App\\Models\\User', 2, 'created', 'App\\Models\\ProductionPlan', 3, '[]', '{\"created_by\":2,\"status\":\"menunggu_persetujuan\",\"product_id\":2,\"quantity\":15,\"due_date\":\"2025-9-20\",\"id\":3}', 'http://127.0.0.1:8000/api/plans', '127.0.0.1', 'PostmanRuntime/7.46.0', NULL, '2025-09-14 01:09:07', '2025-09-14 01:09:07');
INSERT INTO `audits` VALUES (3, 'App\\Models\\User', 2, 'updated', 'App\\Models\\ProductionPlan', 3, '{\"quantity\":15}', '{\"quantity\":30}', 'http://127.0.0.1:8000/api/plans/3', '127.0.0.1', 'PostmanRuntime/7.46.0', NULL, '2025-09-14 01:11:28', '2025-09-14 01:11:28');
INSERT INTO `audits` VALUES (4, 'App\\Models\\User', 2, 'created', 'App\\Models\\ProductionPlan', 4, '[]', '{\"created_by\":2,\"status\":\"menunggu_persetujuan\",\"product_id\":3,\"quantity\":20,\"due_date\":\"2025-9-21\",\"id\":4}', 'http://127.0.0.1:8000/api/plans', '127.0.0.1', 'PostmanRuntime/7.46.0', NULL, '2025-09-14 01:12:42', '2025-09-14 01:12:42');
INSERT INTO `audits` VALUES (5, 'App\\Models\\User', 2, 'deleted', 'App\\Models\\ProductionPlan', 4, '{\"id\":4,\"product_id\":3,\"created_by\":2,\"quantity\":20,\"due_date\":\"2025-09-21\",\"status\":\"menunggu_persetujuan\",\"approved_by\":null,\"approved_at\":null}', '[]', 'http://127.0.0.1:8000/api/plans/4', '127.0.0.1', 'PostmanRuntime/7.46.0', NULL, '2025-09-14 01:14:10', '2025-09-14 01:14:10');
INSERT INTO `audits` VALUES (6, 'App\\Models\\User', 2, 'created', 'App\\Models\\ProductionPlan', 5, '[]', '{\"created_by\":2,\"status\":\"menunggu_persetujuan\",\"product_id\":5,\"quantity\":30,\"due_date\":\"2025-9-18\",\"id\":5}', 'http://127.0.0.1:8000/api/plans', '127.0.0.1', 'PostmanRuntime/7.46.0', NULL, '2025-09-14 01:15:40', '2025-09-14 01:15:40');
INSERT INTO `audits` VALUES (7, 'App\\Models\\User', 1, 'updated', 'App\\Models\\ProductionPlan', 5, '{\"status\":\"menunggu_persetujuan\"}', '{\"status\":\"ditolak\"}', 'http://127.0.0.1:8000/api/plans/5/reject', '127.0.0.1', 'PostmanRuntime/7.46.0', NULL, '2025-09-14 01:18:34', '2025-09-14 01:18:34');
INSERT INTO `audits` VALUES (8, 'App\\Models\\User', 2, 'created', 'App\\Models\\ProductionPlan', 6, '[]', '{\"created_by\":2,\"status\":\"menunggu_persetujuan\",\"product_id\":11,\"quantity\":10,\"due_date\":\"2025-9-18\",\"id\":6}', 'http://127.0.0.1:8000/api/plans', '127.0.0.1', 'PostmanRuntime/7.46.0', NULL, '2025-09-14 01:26:50', '2025-09-14 01:26:50');
INSERT INTO `audits` VALUES (9, 'App\\Models\\User', 2, 'created', 'App\\Models\\ProductionPlan', 7, '[]', '{\"created_by\":2,\"status\":\"menunggu_persetujuan\",\"product_id\":13,\"quantity\":15,\"due_date\":\"2025-9-18\",\"id\":7}', 'http://127.0.0.1:8000/api/plans', '127.0.0.1', 'PostmanRuntime/7.46.0', NULL, '2025-09-14 01:26:58', '2025-09-14 01:26:58');
INSERT INTO `audits` VALUES (10, 'App\\Models\\User', 2, 'created', 'App\\Models\\ProductionPlan', 8, '[]', '{\"created_by\":2,\"status\":\"menunggu_persetujuan\",\"product_id\":15,\"quantity\":20,\"due_date\":\"2025-9-18\",\"id\":8}', 'http://127.0.0.1:8000/api/plans', '127.0.0.1', 'PostmanRuntime/7.46.0', NULL, '2025-09-14 01:27:12', '2025-09-14 01:27:12');
INSERT INTO `audits` VALUES (11, 'App\\Models\\User', 1, 'updated', 'App\\Models\\ProductionPlan', 6, '{\"status\":\"menunggu_persetujuan\",\"approved_by\":null,\"approved_at\":null}', '{\"status\":\"disetujui\",\"approved_by\":1,\"approved_at\":\"2025-09-13T18:33:23.129524Z\"}', 'http://127.0.0.1:8000/api/plans/6/approve', '127.0.0.1', 'PostmanRuntime/7.46.0', NULL, '2025-09-14 01:33:23', '2025-09-14 01:33:23');
INSERT INTO `audits` VALUES (12, 'App\\Models\\User', 1, 'created', 'App\\Models\\ProductionOrder', 1, '[]', '{\"production_plan_id\":6,\"id\":1}', 'http://127.0.0.1:8000/api/plans/6/approve', '127.0.0.1', 'PostmanRuntime/7.46.0', NULL, '2025-09-14 01:33:23', '2025-09-14 01:33:23');
INSERT INTO `audits` VALUES (13, 'App\\Models\\User', 1, 'updated', 'App\\Models\\ProductionPlan', 7, '{\"status\":\"menunggu_persetujuan\",\"approved_by\":null,\"approved_at\":null}', '{\"status\":\"disetujui\",\"approved_by\":1,\"approved_at\":\"2025-09-13T18:34:56.631905Z\"}', 'http://127.0.0.1:8000/api/plans/7/approve', '127.0.0.1', 'PostmanRuntime/7.46.0', NULL, '2025-09-14 01:34:56', '2025-09-14 01:34:56');
INSERT INTO `audits` VALUES (14, 'App\\Models\\User', 1, 'created', 'App\\Models\\ProductionOrder', 2, '[]', '{\"production_plan_id\":7,\"id\":2}', 'http://127.0.0.1:8000/api/plans/7/approve', '127.0.0.1', 'PostmanRuntime/7.46.0', NULL, '2025-09-14 01:34:56', '2025-09-14 01:34:56');
INSERT INTO `audits` VALUES (15, 'App\\Models\\User', 1, 'updated', 'App\\Models\\ProductionPlan', 8, '{\"status\":\"menunggu_persetujuan\",\"approved_by\":null,\"approved_at\":null}', '{\"status\":\"disetujui\",\"approved_by\":1,\"approved_at\":\"2025-09-13T18:35:22.665764Z\"}', 'http://127.0.0.1:8000/api/plans/8/approve', '127.0.0.1', 'PostmanRuntime/7.46.0', NULL, '2025-09-14 01:35:22', '2025-09-14 01:35:22');
INSERT INTO `audits` VALUES (16, 'App\\Models\\User', 1, 'created', 'App\\Models\\ProductionOrder', 3, '[]', '{\"production_plan_id\":8,\"id\":3}', 'http://127.0.0.1:8000/api/plans/8/approve', '127.0.0.1', 'PostmanRuntime/7.46.0', NULL, '2025-09-14 01:35:22', '2025-09-14 01:35:22');
INSERT INTO `audits` VALUES (17, 'App\\Models\\User', 3, 'updated', 'App\\Models\\ProductionOrder', 1, '{\"status\":\"menunggu\",\"started_at\":null}', '{\"status\":\"sedang_dikerjakan\",\"started_at\":\"2025-09-13T18:41:05.502308Z\"}', 'http://127.0.0.1:8000/api/orders/1/status', '127.0.0.1', 'PostmanRuntime/7.46.0', NULL, '2025-09-14 01:41:05', '2025-09-14 01:41:05');
INSERT INTO `audits` VALUES (18, 'App\\Models\\User', 3, 'updated', 'App\\Models\\ProductionOrder', 2, '{\"status\":\"menunggu\",\"started_at\":null}', '{\"status\":\"sedang_dikerjakan\",\"started_at\":\"2025-09-13T18:43:05.186871Z\"}', 'http://127.0.0.1:8000/api/orders/2/status', '127.0.0.1', 'PostmanRuntime/7.46.0', NULL, '2025-09-14 01:43:05', '2025-09-14 01:43:05');
INSERT INTO `audits` VALUES (19, 'App\\Models\\User', 3, 'updated', 'App\\Models\\ProductionOrder', 3, '{\"status\":\"menunggu\",\"started_at\":null}', '{\"status\":\"sedang_dikerjakan\",\"started_at\":\"2025-09-13T18:43:11.311699Z\"}', 'http://127.0.0.1:8000/api/orders/3/status', '127.0.0.1', 'PostmanRuntime/7.46.0', NULL, '2025-09-14 01:43:11', '2025-09-14 01:43:11');
INSERT INTO `audits` VALUES (20, 'App\\Models\\User', 3, 'updated', 'App\\Models\\ProductionOrder', 1, '{\"status\":\"sedang_dikerjakan\",\"quantity_actual\":null,\"finished_at\":null}', '{\"status\":\"selesai\",\"quantity_actual\":10,\"finished_at\":\"2025-09-13T18:45:54.805582Z\"}', 'http://127.0.0.1:8000/api/orders/1/status', '127.0.0.1', 'PostmanRuntime/7.46.0', NULL, '2025-09-14 01:45:54', '2025-09-14 01:45:54');
INSERT INTO `audits` VALUES (21, 'App\\Models\\User', 3, 'updated', 'App\\Models\\ProductionOrder', 2, '{\"status\":\"sedang_dikerjakan\",\"quantity_actual\":null,\"quantity_reject\":0,\"finished_at\":null}', '{\"status\":\"selesai\",\"quantity_actual\":15,\"quantity_reject\":2,\"finished_at\":\"2025-09-13T18:46:14.717669Z\"}', 'http://127.0.0.1:8000/api/orders/2/status', '127.0.0.1', 'PostmanRuntime/7.46.0', NULL, '2025-09-14 01:46:14', '2025-09-14 01:46:14');
INSERT INTO `audits` VALUES (22, 'App\\Models\\User', 3, 'updated', 'App\\Models\\ProductionOrder', 3, '{\"status\":\"sedang_dikerjakan\",\"quantity_actual\":null,\"quantity_reject\":0,\"finished_at\":null}', '{\"status\":\"selesai\",\"quantity_actual\":20,\"quantity_reject\":1,\"finished_at\":\"2025-09-13T18:46:37.227691Z\"}', 'http://127.0.0.1:8000/api/orders/3/status', '127.0.0.1', 'PostmanRuntime/7.46.0', NULL, '2025-09-14 01:46:37', '2025-09-14 01:46:37');
INSERT INTO `audits` VALUES (23, 'App\\Models\\User', 2, 'created', 'App\\Models\\ProductionPlan', 9, '[]', '{\"created_by\":2,\"status\":\"menunggu_persetujuan\",\"product_id\":18,\"quantity\":18,\"due_date\":\"2025-9-18\",\"id\":9}', 'http://127.0.0.1:8000/api/plans', '127.0.0.1', 'PostmanRuntime/7.46.0', NULL, '2025-09-14 15:22:15', '2025-09-14 15:22:15');
INSERT INTO `audits` VALUES (24, 'App\\Models\\User', 1, 'updated', 'App\\Models\\ProductionPlan', 9, '{\"status\":\"menunggu_persetujuan\",\"approved_by\":null,\"approved_at\":null}', '{\"status\":\"disetujui\",\"approved_by\":1,\"approved_at\":\"2025-09-14T08:25:48.742299Z\"}', 'http://127.0.0.1:8000/api/plans/9/approve', '127.0.0.1', 'PostmanRuntime/7.46.0', NULL, '2025-09-14 15:25:48', '2025-09-14 15:25:48');
INSERT INTO `audits` VALUES (25, 'App\\Models\\User', 1, 'created', 'App\\Models\\ProductionOrder', 4, '[]', '{\"production_plan_id\":9,\"id\":4}', 'http://127.0.0.1:8000/api/plans/9/approve', '127.0.0.1', 'PostmanRuntime/7.46.0', NULL, '2025-09-14 15:25:49', '2025-09-14 15:25:49');
INSERT INTO `audits` VALUES (26, 'App\\Models\\User', 3, 'updated', 'App\\Models\\ProductionOrder', 4, '{\"status\":\"menunggu\",\"started_at\":null}', '{\"status\":\"sedang_dikerjakan\",\"started_at\":\"2025-09-14T08:30:48.024176Z\"}', 'http://127.0.0.1:8000/api/orders/4/status', '127.0.0.1', 'PostmanRuntime/7.46.0', NULL, '2025-09-14 15:30:48', '2025-09-14 15:30:48');
INSERT INTO `audits` VALUES (27, 'App\\Models\\User', 3, 'updated', 'App\\Models\\ProductionOrder', 4, '{\"status\":\"sedang_dikerjakan\",\"quantity_actual\":null,\"quantity_reject\":0,\"finished_at\":null}', '{\"status\":\"selesai\",\"quantity_actual\":18,\"quantity_reject\":1,\"finished_at\":\"2025-09-14T11:49:06.836702Z\"}', 'http://127.0.0.1:8000/api/orders/4/status', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', NULL, '2025-09-14 18:49:06', '2025-09-14 18:49:06');
INSERT INTO `audits` VALUES (28, 'App\\Models\\User', 2, 'created', 'App\\Models\\ProductionPlan', 10, '[]', '{\"created_by\":2,\"status\":\"menunggu_persetujuan\",\"product_id\":20,\"quantity\":25,\"due_date\":\"2025-09-20\",\"id\":10}', 'http://127.0.0.1:8000/api/plans', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-15 10:04:01', '2025-09-15 10:04:01');
INSERT INTO `audits` VALUES (29, 'App\\Models\\User', 2, 'created', 'App\\Models\\ProductionPlan', 11, '[]', '{\"created_by\":2,\"status\":\"menunggu_persetujuan\",\"product_id\":20,\"quantity\":25,\"due_date\":\"2025-09-20\",\"id\":11}', 'http://127.0.0.1:8000/api/plans', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-15 10:04:07', '2025-09-15 10:04:07');
INSERT INTO `audits` VALUES (30, 'App\\Models\\User', 1, 'updated', 'App\\Models\\ProductionPlan', 10, '{\"status\":\"menunggu_persetujuan\"}', '{\"status\":\"ditolak\"}', 'http://127.0.0.1:8000/api/plans/10/reject', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-15 10:22:33', '2025-09-15 10:22:33');
INSERT INTO `audits` VALUES (31, 'App\\Models\\User', 1, 'updated', 'App\\Models\\ProductionPlan', 11, '{\"status\":\"menunggu_persetujuan\",\"approved_by\":null,\"approved_at\":null}', '{\"status\":\"disetujui\",\"approved_by\":1,\"approved_at\":\"2025-09-15T03:23:31.924151Z\"}', 'http://127.0.0.1:8000/api/plans/11/approve', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-15 10:23:31', '2025-09-15 10:23:31');
INSERT INTO `audits` VALUES (32, 'App\\Models\\User', 1, 'created', 'App\\Models\\ProductionOrder', 5, '[]', '{\"production_plan_id\":11,\"id\":5}', 'http://127.0.0.1:8000/api/plans/11/approve', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-15 10:23:32', '2025-09-15 10:23:32');
INSERT INTO `audits` VALUES (33, 'App\\Models\\User', 3, 'updated', 'App\\Models\\ProductionOrder', 5, '{\"status\":\"menunggu\",\"started_at\":null}', '{\"status\":\"sedang_dikerjakan\",\"started_at\":\"2025-09-15T03:27:35.924845Z\"}', 'http://127.0.0.1:8000/api/orders/5/status', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-15 10:27:35', '2025-09-15 10:27:35');
INSERT INTO `audits` VALUES (34, 'App\\Models\\User', 3, 'updated', 'App\\Models\\ProductionOrder', 5, '{\"status\":\"sedang_dikerjakan\",\"quantity_actual\":null,\"quantity_reject\":0,\"finished_at\":null}', '{\"status\":\"selesai\",\"quantity_actual\":25,\"quantity_reject\":1,\"finished_at\":\"2025-09-15T03:29:12.159564Z\"}', 'http://127.0.0.1:8000/api/orders/5/status', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-15 10:29:12', '2025-09-15 10:29:12');
INSERT INTO `audits` VALUES (35, 'App\\Models\\User', 2, 'created', 'App\\Models\\ProductionPlan', 12, '[]', '{\"created_by\":2,\"status\":\"menunggu_persetujuan\",\"product_id\":1,\"quantity\":11,\"due_date\":\"2025-09-20 00:00:00\",\"id\":12}', 'http://127.0.0.1:8000/api/plans', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-16 01:52:23', '2025-09-16 01:52:23');
INSERT INTO `audits` VALUES (36, 'App\\Models\\User', 2, 'created', 'App\\Models\\ProductionPlan', 13, '[]', '{\"created_by\":2,\"status\":\"menunggu_persetujuan\",\"product_id\":2,\"quantity\":12,\"due_date\":\"2025-09-21 00:00:00\",\"id\":13}', 'http://127.0.0.1:8000/api/plans', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-16 01:54:31', '2025-09-16 01:54:31');
INSERT INTO `audits` VALUES (37, 'App\\Models\\User', 2, 'created', 'App\\Models\\ProductionPlan', 14, '[]', '{\"created_by\":2,\"status\":\"menunggu_persetujuan\",\"product_id\":3,\"quantity\":13,\"due_date\":\"2025-09-22 00:00:00\",\"id\":14}', 'http://127.0.0.1:8000/api/plans', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-16 01:54:52', '2025-09-16 01:54:52');
INSERT INTO `audits` VALUES (38, 'App\\Models\\User', 2, 'created', 'App\\Models\\ProductionPlan', 15, '[]', '{\"created_by\":2,\"status\":\"menunggu_persetujuan\",\"product_id\":4,\"quantity\":15,\"due_date\":\"2025-09-23 00:00:00\",\"id\":15}', 'http://127.0.0.1:8000/api/plans', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-16 01:55:17', '2025-09-16 01:55:17');
INSERT INTO `audits` VALUES (39, 'App\\Models\\User', 1, 'updated', 'App\\Models\\ProductionPlan', 12, '{\"status\":\"menunggu_persetujuan\"}', '{\"status\":\"ditolak\"}', 'http://127.0.0.1:8000/api/plans/12/reject', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-16 01:57:03', '2025-09-16 01:57:03');
INSERT INTO `audits` VALUES (40, 'App\\Models\\User', 1, 'updated', 'App\\Models\\ProductionPlan', 13, '{\"status\":\"menunggu_persetujuan\",\"approved_by\":null,\"approved_at\":null}', '{\"status\":\"disetujui\",\"approved_by\":1,\"approved_at\":\"2025-09-16 01:57:07\"}', 'http://127.0.0.1:8000/api/plans/13/approve', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-16 01:57:07', '2025-09-16 01:57:07');
INSERT INTO `audits` VALUES (41, 'App\\Models\\User', 1, 'created', 'App\\Models\\ProductionOrder', 6, '[]', '{\"production_plan_id\":13,\"id\":6}', 'http://127.0.0.1:8000/api/plans/13/approve', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-16 01:57:07', '2025-09-16 01:57:07');
INSERT INTO `audits` VALUES (42, 'App\\Models\\User', 1, 'updated', 'App\\Models\\ProductionPlan', 14, '{\"status\":\"menunggu_persetujuan\",\"approved_by\":null,\"approved_at\":null}', '{\"status\":\"disetujui\",\"approved_by\":1,\"approved_at\":\"2025-09-16 01:57:13\"}', 'http://127.0.0.1:8000/api/plans/14/approve', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-16 01:57:13', '2025-09-16 01:57:13');
INSERT INTO `audits` VALUES (43, 'App\\Models\\User', 1, 'created', 'App\\Models\\ProductionOrder', 7, '[]', '{\"production_plan_id\":14,\"id\":7}', 'http://127.0.0.1:8000/api/plans/14/approve', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-16 01:57:13', '2025-09-16 01:57:13');
INSERT INTO `audits` VALUES (44, 'App\\Models\\User', 1, 'updated', 'App\\Models\\ProductionPlan', 15, '{\"status\":\"menunggu_persetujuan\",\"approved_by\":null,\"approved_at\":null}', '{\"status\":\"disetujui\",\"approved_by\":1,\"approved_at\":\"2025-09-16 01:57:17\"}', 'http://127.0.0.1:8000/api/plans/15/approve', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-16 01:57:17', '2025-09-16 01:57:17');
INSERT INTO `audits` VALUES (45, 'App\\Models\\User', 1, 'created', 'App\\Models\\ProductionOrder', 8, '[]', '{\"production_plan_id\":15,\"id\":8}', 'http://127.0.0.1:8000/api/plans/15/approve', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-16 01:57:17', '2025-09-16 01:57:17');
INSERT INTO `audits` VALUES (46, 'App\\Models\\User', 3, 'updated', 'App\\Models\\ProductionOrder', 6, '{\"status\":\"menunggu\",\"started_at\":null}', '{\"status\":\"sedang_dikerjakan\",\"started_at\":\"2025-09-15T18:59:46.764220Z\"}', 'http://127.0.0.1:8000/api/orders/6/status', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', NULL, '2025-09-16 01:59:46', '2025-09-16 01:59:46');
INSERT INTO `audits` VALUES (47, 'App\\Models\\User', 3, 'updated', 'App\\Models\\ProductionOrder', 7, '{\"status\":\"menunggu\",\"started_at\":null}', '{\"status\":\"sedang_dikerjakan\",\"started_at\":\"2025-09-15T19:09:08.798843Z\"}', 'http://127.0.0.1:8000/api/orders/7/status', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', NULL, '2025-09-16 02:09:09', '2025-09-16 02:09:09');
INSERT INTO `audits` VALUES (48, 'App\\Models\\User', 3, 'updated', 'App\\Models\\ProductionOrder', 8, '{\"status\":\"menunggu\",\"started_at\":null}', '{\"status\":\"sedang_dikerjakan\",\"started_at\":\"2025-09-15T19:09:19.338541Z\"}', 'http://127.0.0.1:8000/api/orders/8/status', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', NULL, '2025-09-16 02:09:19', '2025-09-16 02:09:19');
INSERT INTO `audits` VALUES (49, 'App\\Models\\User', 2, 'created', 'App\\Models\\ProductionPlan', 16, '[]', '{\"created_by\":2,\"status\":\"menunggu_persetujuan\",\"product_id\":20,\"quantity\":14,\"due_date\":\"2025-09-20 00:00:00\",\"id\":16}', 'http://127.0.0.1:8000/api/plans', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-16 02:17:50', '2025-09-16 02:17:50');
INSERT INTO `audits` VALUES (50, 'App\\Models\\User', 2, 'created', 'App\\Models\\ProductionPlan', 17, '[]', '{\"created_by\":2,\"status\":\"menunggu_persetujuan\",\"product_id\":19,\"quantity\":20,\"due_date\":\"2025-09-20 00:00:00\",\"id\":17}', 'http://127.0.0.1:8000/api/plans', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-16 02:18:02', '2025-09-16 02:18:02');
INSERT INTO `audits` VALUES (51, 'App\\Models\\User', 2, 'created', 'App\\Models\\ProductionPlan', 18, '[]', '{\"created_by\":2,\"status\":\"menunggu_persetujuan\",\"product_id\":18,\"quantity\":9,\"due_date\":\"2025-09-20 00:00:00\",\"id\":18}', 'http://127.0.0.1:8000/api/plans', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-16 02:18:13', '2025-09-16 02:18:13');
INSERT INTO `audits` VALUES (52, 'App\\Models\\User', 2, 'created', 'App\\Models\\ProductionPlan', 19, '[]', '{\"created_by\":2,\"status\":\"menunggu_persetujuan\",\"product_id\":17,\"quantity\":10,\"due_date\":\"2025-09-20 00:00:00\",\"id\":19}', 'http://127.0.0.1:8000/api/plans', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-16 02:18:42', '2025-09-16 02:18:42');
INSERT INTO `audits` VALUES (53, 'App\\Models\\User', 2, 'created', 'App\\Models\\ProductionPlan', 20, '[]', '{\"created_by\":2,\"status\":\"menunggu_persetujuan\",\"product_id\":16,\"quantity\":12,\"due_date\":\"2025-09-20 00:00:00\",\"id\":20}', 'http://127.0.0.1:8000/api/plans', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-16 02:18:55', '2025-09-16 02:18:55');
INSERT INTO `audits` VALUES (54, 'App\\Models\\User', 2, 'created', 'App\\Models\\ProductionPlan', 21, '[]', '{\"created_by\":2,\"status\":\"menunggu_persetujuan\",\"product_id\":15,\"quantity\":13,\"due_date\":\"2025-09-20 00:00:00\",\"id\":21}', 'http://127.0.0.1:8000/api/plans', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-16 02:19:06', '2025-09-16 02:19:06');
INSERT INTO `audits` VALUES (55, 'App\\Models\\User', 3, 'updated', 'App\\Models\\ProductionOrder', 6, '{\"status\":\"sedang_dikerjakan\",\"quantity_actual\":null,\"finished_at\":null}', '{\"status\":\"selesai\",\"quantity_actual\":12,\"finished_at\":\"2025-09-15T19:21:30.552747Z\"}', 'http://127.0.0.1:8000/api/orders/6/status', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', NULL, '2025-09-16 02:21:30', '2025-09-16 02:21:30');
INSERT INTO `audits` VALUES (56, 'App\\Models\\User', 3, 'updated', 'App\\Models\\ProductionOrder', 7, '{\"status\":\"sedang_dikerjakan\",\"quantity_actual\":null,\"finished_at\":null}', '{\"status\":\"selesai\",\"quantity_actual\":13,\"finished_at\":\"2025-09-15T19:21:59.580813Z\"}', 'http://127.0.0.1:8000/api/orders/7/status', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', NULL, '2025-09-16 02:21:59', '2025-09-16 02:21:59');
INSERT INTO `audits` VALUES (57, 'App\\Models\\User', 3, 'updated', 'App\\Models\\ProductionOrder', 8, '{\"status\":\"sedang_dikerjakan\",\"quantity_actual\":null,\"quantity_reject\":0,\"finished_at\":null}', '{\"status\":\"selesai\",\"quantity_actual\":15,\"quantity_reject\":2,\"finished_at\":\"2025-09-15T19:22:40.277685Z\"}', 'http://127.0.0.1:8000/api/orders/8/status', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', NULL, '2025-09-16 02:22:40', '2025-09-16 02:22:40');
INSERT INTO `audits` VALUES (58, 'App\\Models\\User', 3, 'updated', 'App\\Models\\ProductionOrder', 6, '{\"status\":\"selesai\",\"delivered_at\":null}', '{\"status\":\"diserahkan_ke_gudang\",\"delivered_at\":\"2025-09-15T19:34:52.329441Z\"}', 'http://127.0.0.1:8000/api/orders/6/status', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', NULL, '2025-09-16 02:34:52', '2025-09-16 02:34:52');
INSERT INTO `audits` VALUES (59, 'App\\Models\\User', 3, 'updated', 'App\\Models\\ProductionOrder', 7, '{\"status\":\"selesai\",\"delivered_at\":null}', '{\"status\":\"diserahkan_ke_gudang\",\"delivered_at\":\"2025-09-15T19:35:16.640857Z\"}', 'http://127.0.0.1:8000/api/orders/7/status', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', NULL, '2025-09-16 02:35:16', '2025-09-16 02:35:16');
INSERT INTO `audits` VALUES (60, 'App\\Models\\User', 3, 'updated', 'App\\Models\\ProductionOrder', 8, '{\"status\":\"selesai\",\"delivered_at\":null}', '{\"status\":\"diserahkan_ke_gudang\",\"delivered_at\":\"2025-09-15T19:35:40.742552Z\"}', 'http://127.0.0.1:8000/api/orders/8/status', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', NULL, '2025-09-16 02:35:40', '2025-09-16 02:35:40');
INSERT INTO `audits` VALUES (61, 'App\\Models\\User', 2, 'created', 'App\\Models\\ProductionPlan', 22, '[]', '{\"created_by\":2,\"status\":\"menunggu_persetujuan\",\"product_id\":5,\"quantity\":9,\"due_date\":\"2025-09-13 00:00:00\",\"id\":22}', 'http://127.0.0.1:8000/api/plans', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-09 00:00:00', '2025-09-09 00:00:00');
INSERT INTO `audits` VALUES (62, 'App\\Models\\User', 1, 'updated', 'App\\Models\\ProductionPlan', 22, '{\"status\":\"menunggu_persetujuan\",\"approved_by\":null,\"approved_at\":null}', '{\"status\":\"disetujui\",\"approved_by\":1,\"approved_at\":\"2025-09-09 00:00:00\"}', 'http://127.0.0.1:8000/api/plans/22/approve', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-09 00:00:00', '2025-09-09 00:00:00');
INSERT INTO `audits` VALUES (63, 'App\\Models\\User', 1, 'created', 'App\\Models\\ProductionOrder', 9, '[]', '{\"production_plan_id\":22,\"id\":9}', 'http://127.0.0.1:8000/api/plans/22/approve', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-09 00:00:00', '2025-09-09 00:00:00');
INSERT INTO `audits` VALUES (64, 'App\\Models\\User', 3, 'updated', 'App\\Models\\ProductionOrder', 9, '{\"status\":\"menunggu\",\"started_at\":null}', '{\"status\":\"sedang_dikerjakan\",\"started_at\":\"2025-09-08T17:00:00.000000Z\"}', 'http://127.0.0.1:8000/api/orders/9/status', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', NULL, '2025-09-09 00:00:00', '2025-09-09 00:00:00');
INSERT INTO `audits` VALUES (65, 'App\\Models\\User', 3, 'updated', 'App\\Models\\ProductionOrder', 9, '{\"status\":\"sedang_dikerjakan\",\"quantity_actual\":null,\"finished_at\":null}', '{\"status\":\"selesai\",\"quantity_actual\":9,\"finished_at\":\"2025-09-09T07:30:45.000000Z\"}', 'http://127.0.0.1:8000/api/orders/9/status', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', NULL, '2025-09-09 14:30:45', '2025-09-09 14:30:45');
INSERT INTO `audits` VALUES (66, 'App\\Models\\User', 3, 'updated', 'App\\Models\\ProductionOrder', 9, '{\"status\":\"selesai\",\"delivered_at\":null}', '{\"status\":\"diserahkan_ke_gudang\",\"delivered_at\":\"2025-09-09T07:32:30.000000Z\"}', 'http://127.0.0.1:8000/api/orders/9/status', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', NULL, '2025-09-09 14:32:30', '2025-09-09 14:32:30');
INSERT INTO `audits` VALUES (67, 'App\\Models\\User', 2, 'created', 'App\\Models\\ProductionPlan', 23, '[]', '{\"created_by\":2,\"status\":\"menunggu_persetujuan\",\"product_id\":5,\"quantity\":20,\"due_date\":\"2025-09-20 00:00:00\",\"id\":23}', 'http://127.0.0.1:8000/api/plans', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-16 03:38:57', '2025-09-16 03:38:57');
INSERT INTO `audits` VALUES (68, 'App\\Models\\User', 2, 'created', 'App\\Models\\ProductionPlan', 24, '[]', '{\"created_by\":2,\"status\":\"menunggu_persetujuan\",\"product_id\":6,\"quantity\":18,\"due_date\":\"2025-09-20 00:00:00\",\"id\":24}', 'http://127.0.0.1:8000/api/plans', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-16 03:39:32', '2025-09-16 03:39:32');
INSERT INTO `audits` VALUES (69, 'App\\Models\\User', 2, 'created', 'App\\Models\\ProductionPlan', 25, '[]', '{\"created_by\":2,\"status\":\"menunggu_persetujuan\",\"product_id\":7,\"quantity\":16,\"due_date\":\"2025-09-20 00:00:00\",\"id\":25}', 'http://127.0.0.1:8000/api/plans', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-16 03:40:12', '2025-09-16 03:40:12');
INSERT INTO `audits` VALUES (70, 'App\\Models\\User', 1, 'updated', 'App\\Models\\ProductionPlan', 24, '{\"status\":\"menunggu_persetujuan\"}', '{\"status\":\"ditolak\"}', 'http://127.0.0.1:8000/api/plans/24/reject', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-16 03:41:20', '2025-09-16 03:41:20');
INSERT INTO `audits` VALUES (71, 'App\\Models\\User', 1, 'updated', 'App\\Models\\ProductionPlan', 25, '{\"status\":\"menunggu_persetujuan\",\"approved_by\":null,\"approved_at\":null}', '{\"status\":\"disetujui\",\"approved_by\":1,\"approved_at\":\"2025-09-16 03:41:23\"}', 'http://127.0.0.1:8000/api/plans/25/approve', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-16 03:41:23', '2025-09-16 03:41:23');
INSERT INTO `audits` VALUES (72, 'App\\Models\\User', 1, 'created', 'App\\Models\\ProductionOrder', 10, '[]', '{\"production_plan_id\":25,\"id\":10}', 'http://127.0.0.1:8000/api/plans/25/approve', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-16 03:41:23', '2025-09-16 03:41:23');
INSERT INTO `audits` VALUES (73, 'App\\Models\\User', 3, 'updated', 'App\\Models\\ProductionOrder', 10, '{\"status\":\"menunggu\",\"started_at\":null}', '{\"status\":\"sedang_dikerjakan\",\"started_at\":\"2025-09-15T20:47:12.675147Z\"}', 'http://127.0.0.1:8000/api/orders/10/status', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', NULL, '2025-09-16 03:47:12', '2025-09-16 03:47:12');
INSERT INTO `audits` VALUES (74, 'App\\Models\\User', 3, 'updated', 'App\\Models\\ProductionOrder', 10, '{\"status\":\"sedang_dikerjakan\",\"quantity_actual\":null,\"finished_at\":null}', '{\"status\":\"selesai\",\"quantity_actual\":16,\"finished_at\":\"2025-09-15T20:48:54.857888Z\"}', 'http://127.0.0.1:8000/api/orders/10/status', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', NULL, '2025-09-16 03:48:54', '2025-09-16 03:48:54');
INSERT INTO `audits` VALUES (75, 'App\\Models\\User', 3, 'updated', 'App\\Models\\ProductionOrder', 10, '{\"status\":\"selesai\",\"delivered_at\":null}', '{\"status\":\"diserahkan_ke_gudang\",\"delivered_at\":\"2025-09-15T20:49:18.985459Z\"}', 'http://127.0.0.1:8000/api/orders/10/status', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', NULL, '2025-09-16 03:49:19', '2025-09-16 03:49:19');
INSERT INTO `audits` VALUES (76, 'App\\Models\\User', 2, 'created', 'App\\Models\\ProductionPlan', 26, '[]', '{\"created_by\":2,\"status\":\"menunggu_persetujuan\",\"product_id\":11,\"quantity\":11,\"due_date\":\"2025-09-20 00:00:00\",\"id\":26}', 'http://127.0.0.1:8000/api/plans', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-16 05:56:04', '2025-09-16 05:56:04');
INSERT INTO `audits` VALUES (77, 'App\\Models\\User', 1, 'updated', 'App\\Models\\ProductionPlan', 26, '{\"status\":\"menunggu_persetujuan\",\"approved_by\":null,\"approved_at\":null}', '{\"status\":\"disetujui\",\"approved_by\":1,\"approved_at\":\"2025-09-16 06:22:10\"}', 'http://127.0.0.1:8000/api/plans/26/approve', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-16 06:22:10', '2025-09-16 06:22:10');
INSERT INTO `audits` VALUES (78, 'App\\Models\\User', 1, 'created', 'App\\Models\\ProductionOrder', 11, '[]', '{\"production_plan_id\":26,\"id\":11}', 'http://127.0.0.1:8000/api/plans/26/approve', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-16 06:22:10', '2025-09-16 06:22:10');
INSERT INTO `audits` VALUES (79, 'App\\Models\\User', 3, 'updated', 'App\\Models\\ProductionOrder', 11, '{\"status\":\"menunggu\",\"started_at\":null}', '{\"status\":\"sedang_dikerjakan\",\"started_at\":\"2025-09-15T23:22:52.186406Z\"}', 'http://127.0.0.1:8000/api/orders/11/status', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-16 06:22:52', '2025-09-16 06:22:52');
INSERT INTO `audits` VALUES (80, 'App\\Models\\User', 3, 'updated', 'App\\Models\\ProductionOrder', 11, '{\"status\":\"sedang_dikerjakan\",\"quantity_actual\":null,\"quantity_reject\":0,\"finished_at\":null}', '{\"status\":\"selesai\",\"quantity_actual\":20,\"quantity_reject\":5,\"finished_at\":\"2025-09-15T23:24:43.114639Z\"}', 'http://127.0.0.1:8000/api/orders/11/status', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-16 06:24:43', '2025-09-16 06:24:43');
INSERT INTO `audits` VALUES (81, 'App\\Models\\User', 3, 'updated', 'App\\Models\\ProductionOrder', 11, '{\"status\":\"selesai\",\"delivered_at\":null}', '{\"status\":\"diserahkan_ke_gudang\",\"delivered_at\":\"2025-09-15T23:26:48.476195Z\"}', 'http://127.0.0.1:8000/api/orders/11/status', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', NULL, '2025-09-16 06:26:48', '2025-09-16 06:26:48');

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache
-- ----------------------------

-- ----------------------------
-- Table structure for cache_locks
-- ----------------------------
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache_locks
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
INSERT INTO `failed_jobs` VALUES (1, '4a9f6e0a-d803-4abd-a759-220afa589eab', 'database', 'default', '{\"uuid\":\"4a9f6e0a-d803-4abd-a759-220afa589eab\",\"displayName\":\"App\\\\Jobs\\\\NotifyProductionStaffJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\NotifyProductionStaffJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\NotifyProductionStaffJob\\\":1:{s:18:\\\"\\u0000*\\u0000productionOrder\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:26:\\\"App\\\\Models\\\\ProductionOrder\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"},\"createdAt\":1757788406,\"delay\":null}', 'Error: Class \"App\\Jobs\\Log\" not found in C:\\xampp\\htdocs\\elitech-backend\\app\\Jobs\\NotifyProductionStaffJob.php:27\nStack trace:\n#0 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\NotifyProductionStaffJob->handle()\n#1 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(836): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Container\\Container->call(Array)\n#6 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\NotifyProductionStaffJob))\n#7 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\NotifyProductionStaffJob))\n#8 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(136): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(134): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\NotifyProductionStaffJob), false)\n#10 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\NotifyProductionStaffJob))\n#11 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\NotifyProductionStaffJob))\n#12 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(127): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\NotifyProductionStaffJob))\n#14 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(444): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(394): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(180): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(836): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#26 C:\\xampp\\htdocs\\elitech-backend\\vendor\\symfony\\console\\Command\\Command.php(318): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\elitech-backend\\vendor\\symfony\\console\\Application.php(1110): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\xampp\\htdocs\\elitech-backend\\vendor\\symfony\\console\\Application.php(359): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\elitech-backend\\vendor\\symfony\\console\\Application.php(194): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\elitech-backend\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#34 {main}', '2025-09-15 09:44:54');
INSERT INTO `failed_jobs` VALUES (2, '327daf45-b329-4aff-ac0d-1e0e8ac8bc53', 'database', 'default', '{\"uuid\":\"327daf45-b329-4aff-ac0d-1e0e8ac8bc53\",\"displayName\":\"App\\\\Jobs\\\\NotifyProductionStaffJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\NotifyProductionStaffJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\NotifyProductionStaffJob\\\":1:{s:18:\\\"\\u0000*\\u0000productionOrder\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:26:\\\"App\\\\Models\\\\ProductionOrder\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"},\"createdAt\":1757788496,\"delay\":null}', 'Error: Class \"App\\Jobs\\Log\" not found in C:\\xampp\\htdocs\\elitech-backend\\app\\Jobs\\NotifyProductionStaffJob.php:27\nStack trace:\n#0 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\NotifyProductionStaffJob->handle()\n#1 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(836): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Container\\Container->call(Array)\n#6 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\NotifyProductionStaffJob))\n#7 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\NotifyProductionStaffJob))\n#8 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(136): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(134): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\NotifyProductionStaffJob), false)\n#10 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\NotifyProductionStaffJob))\n#11 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\NotifyProductionStaffJob))\n#12 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(127): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\NotifyProductionStaffJob))\n#14 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(444): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(394): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(180): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(836): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#26 C:\\xampp\\htdocs\\elitech-backend\\vendor\\symfony\\console\\Command\\Command.php(318): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\elitech-backend\\vendor\\symfony\\console\\Application.php(1110): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\xampp\\htdocs\\elitech-backend\\vendor\\symfony\\console\\Application.php(359): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\elitech-backend\\vendor\\symfony\\console\\Application.php(194): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\elitech-backend\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#34 {main}', '2025-09-15 09:44:54');
INSERT INTO `failed_jobs` VALUES (3, 'ed0fed46-f49e-4c2a-a0d3-0489ca2bc461', 'database', 'default', '{\"uuid\":\"ed0fed46-f49e-4c2a-a0d3-0489ca2bc461\",\"displayName\":\"App\\\\Jobs\\\\NotifyProductionStaffJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\NotifyProductionStaffJob\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\NotifyProductionStaffJob\\\":1:{s:18:\\\"\\u0000*\\u0000productionOrder\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:26:\\\"App\\\\Models\\\\ProductionOrder\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"},\"createdAt\":1757788522,\"delay\":null}', 'Error: Class \"App\\Jobs\\Log\" not found in C:\\xampp\\htdocs\\elitech-backend\\app\\Jobs\\NotifyProductionStaffJob.php:27\nStack trace:\n#0 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\NotifyProductionStaffJob->handle()\n#1 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(836): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Container\\Container->call(Array)\n#6 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\NotifyProductionStaffJob))\n#7 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\NotifyProductionStaffJob))\n#8 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(136): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(134): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\NotifyProductionStaffJob), false)\n#10 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\NotifyProductionStaffJob))\n#11 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\NotifyProductionStaffJob))\n#12 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(127): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\NotifyProductionStaffJob))\n#14 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(444): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(394): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(180): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(836): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#26 C:\\xampp\\htdocs\\elitech-backend\\vendor\\symfony\\console\\Command\\Command.php(318): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\elitech-backend\\vendor\\symfony\\console\\Application.php(1110): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\xampp\\htdocs\\elitech-backend\\vendor\\symfony\\console\\Application.php(359): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\elitech-backend\\vendor\\symfony\\console\\Application.php(194): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\elitech-backend\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\elitech-backend\\artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#34 {main}', '2025-09-15 09:44:55');

-- ----------------------------
-- Table structure for job_batches
-- ----------------------------
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cancelled_at` int NULL DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job_batches
-- ----------------------------

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED NULL DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_index`(`queue` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '0001_01_01_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` VALUES (3, '0001_01_01_000002_create_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2025_09_12_103638_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2025_09_13_062548_create_products_table', 1);
INSERT INTO `migrations` VALUES (6, '2025_09_13_062554_create_production_plans_table', 1);
INSERT INTO `migrations` VALUES (7, '2025_09_13_062555_create_production_orders_table', 1);
INSERT INTO `migrations` VALUES (8, '2025_09_13_062602_create_production_logs_table', 1);
INSERT INTO `migrations` VALUES (9, '2025_09_13_081851_create_audits_table', 1);
INSERT INTO `migrations` VALUES (10, '2025_09_14_143858_create_notifications_table', 2);

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `notifications_notifiable_type_notifiable_id_index`(`notifiable_type` ASC, `notifiable_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notifications
-- ----------------------------
INSERT INTO `notifications` VALUES ('068cfa35-8f60-4e16-bc26-78515fa62ca5', 'App\\Notifications\\PlanSubmittedForApproval', 'App\\Models\\User', 1, '{\"message\":\"Rencana produksi #24 untuk produk \'Lemari Kayu Jati Eksekutif\' menunggu persetujuan Anda.\",\"link\":\"\\/production-plans\\/24\",\"plan_id\":24}', NULL, '2025-09-16 03:39:32', '2025-09-16 03:39:32');
INSERT INTO `notifications` VALUES ('089aa18e-b215-464b-9b49-f9f414fed5a0', 'App\\Notifications\\PlanSubmittedForApproval', 'App\\Models\\User', 1, '{\"message\":\"Rencana produksi #15 untuk produk \'Lemari Kayu Jati Kantor Modern\' menunggu persetujuan Anda.\",\"link\":\"\\/production-plans\\/15\",\"plan_id\":15}', '2025-09-02 01:58:25', '2025-09-02 01:58:25', '2025-09-02 01:58:25');
INSERT INTO `notifications` VALUES ('159b0961-d2cd-485d-b58b-12412ce1a224', 'App\\Notifications\\ProductionOrderStatusUpdated', 'App\\Models\\User', 1, '{\"message\":\"Status order #8 telah diubah menjadi \'selesai\' oleh Staff Produksi.\",\"link\":\"\\/production-orders\\/8\",\"order_id\":8,\"status\":\"selesai\"}', '2025-09-02 02:36:42', '2025-09-02 02:21:30', '2025-09-02 02:36:42');
INSERT INTO `notifications` VALUES ('210730ca-3832-4f14-869a-94a5a4bc12df', 'App\\Notifications\\ProductionOrderStatusUpdated', 'App\\Models\\User', 1, '{\"message\":\"Status order #6 telah diubah menjadi \'sedang dikerjakan\' oleh Staff Produksi.\",\"link\":\"\\/production-orders\\/6\",\"order_id\":6,\"status\":\"sedang_dikerjakan\"}', '2025-09-02 02:36:14', '2025-09-02 01:59:46', '2025-09-02 02:36:17');
INSERT INTO `notifications` VALUES ('2341dae1-686b-43ac-9415-01bee109a006', 'App\\Notifications\\PlanHasBeenProcessed', 'App\\Models\\User', 2, '{\"message\":\"Rencana produksi #22 yang Anda buat telah di-proses dengan status: DISETUJUI.\",\"link\":\"\\/production-plans\\/22\",\"plan_id\":22,\"status\":\"disetujui\"}', '2025-09-16 03:38:14', '2025-09-09 00:00:00', '2025-09-16 03:38:14');
INSERT INTO `notifications` VALUES ('2d36a1aa-1a36-43d1-b27e-13fd7962c9d7', 'App\\Notifications\\NewProductionOrderCreated', 'App\\Models\\User', 3, '{\"message\":\"Order produksi baru #6 untuk produk \'Kursi Ergonomis Eksekutif\' telah dibuat dan siap dikerjakan.\",\"link\":\"\\/production-orders\\/6\",\"order_id\":6}', '2025-09-02 02:04:12', '2025-09-02 02:04:12', '2025-09-02 02:04:12');
INSERT INTO `notifications` VALUES ('3a0f9b28-8e07-4d4d-8a53-853d03c1c414', 'App\\Notifications\\ProductionOrderStatusUpdated', 'App\\Models\\User', 1, '{\"message\":\"Status order #11 telah diubah menjadi \'diserahkan ke gudang\' oleh Staff Produksi.\",\"link\":\"\\/production-orders\\/11\",\"order_id\":11,\"status\":\"diserahkan_ke_gudang\"}', NULL, '2025-09-16 06:26:48', '2025-09-16 06:26:48');
INSERT INTO `notifications` VALUES ('42cfd1c3-3c20-4e2f-9d33-96aa9a2722a9', 'App\\Notifications\\ProductionOrderStatusUpdated', 'App\\Models\\User', 1, '{\"message\":\"Status order #8 telah diubah menjadi \'sedang dikerjakan\' oleh Staff Produksi.\",\"link\":\"\\/production-orders\\/8\",\"order_id\":8,\"status\":\"sedang_dikerjakan\"}', '2025-09-02 02:36:14', '2025-09-02 01:59:46', '2025-09-02 02:36:17');
INSERT INTO `notifications` VALUES ('50400699-d47f-4a0e-88c8-e05bb3d2a5a1', 'App\\Notifications\\ProductionOrderStatusUpdated', 'App\\Models\\User', 1, '{\"message\":\"Status order #11 telah diubah menjadi \'selesai\' oleh Staff Produksi.\",\"link\":\"\\/production-orders\\/11\",\"order_id\":11,\"status\":\"selesai\"}', NULL, '2025-09-16 06:24:43', '2025-09-16 06:24:43');
INSERT INTO `notifications` VALUES ('59873cbe-d9de-49f4-8d4c-2c38e0a5933d', 'App\\Notifications\\PlanHasBeenProcessed', 'App\\Models\\User', 2, '{\"message\":\"Rencana produksi #13 yang Anda buat telah di-proses dengan status: DISETUJUI.\",\"link\":\"\\/production-plans\\/13\",\"plan_id\":13,\"status\":\"disetujui\"}', '2025-09-02 01:58:15', '2025-09-02 01:58:15', '2025-09-02 01:58:15');
INSERT INTO `notifications` VALUES ('59997bfb-9746-4cb9-806e-91d7a3140293', 'App\\Notifications\\PlanHasBeenProcessed', 'App\\Models\\User', 2, '{\"message\":\"Rencana produksi #15 yang Anda buat telah di-proses dengan status: DISETUJUI.\",\"link\":\"\\/production-plans\\/15\",\"plan_id\":15,\"status\":\"disetujui\"}', '2025-09-02 01:58:15', '2025-09-02 01:58:15', '2025-09-02 01:58:15');
INSERT INTO `notifications` VALUES ('65138476-fba8-4fd7-9349-5d0431f00183', 'App\\Notifications\\ProductionOrderStatusUpdated', 'App\\Models\\User', 1, '{\"message\":\"Status order #7 telah diubah menjadi \'diserahkan ke gudang\' oleh Staff Produksi.\",\"link\":\"\\/production-orders\\/7\",\"order_id\":7,\"status\":\"diserahkan_ke_gudang\"}', '2025-09-02 02:36:42', '2025-09-02 02:21:30', '2025-09-02 02:36:42');
INSERT INTO `notifications` VALUES ('708e2f8b-2e5b-4f7c-808f-8b97cc0754e0', 'App\\Notifications\\PlanHasBeenProcessed', 'App\\Models\\User', 2, '{\"message\":\"Rencana produksi #24 yang Anda buat telah di-proses dengan status: DITOLAK.\",\"link\":\"\\/production-plans\\/24\",\"plan_id\":24,\"status\":\"ditolak\"}', NULL, '2025-09-16 03:41:20', '2025-09-16 03:41:20');
INSERT INTO `notifications` VALUES ('7121b77c-7a6d-4830-83eb-051ca5a3b2ef', 'App\\Notifications\\ProductionOrderStatusUpdated', 'App\\Models\\User', 1, '{\"message\":\"Status order #9 telah diubah menjadi \'diserahkan ke gudang\' oleh Staff Produksi.\",\"link\":\"\\/production-orders\\/9\",\"order_id\":9,\"status\":\"diserahkan_ke_gudang\"}', '2025-09-09 14:32:30', '2025-09-09 14:32:30', '2025-09-09 14:32:30');
INSERT INTO `notifications` VALUES ('73342140-2235-4684-ba2c-b2768d8ca140', 'App\\Notifications\\ProductionOrderStatusUpdated', 'App\\Models\\User', 1, '{\"message\":\"Status order #10 telah diubah menjadi \'sedang dikerjakan\' oleh Staff Produksi.\",\"link\":\"\\/production-orders\\/10\",\"order_id\":10,\"status\":\"sedang_dikerjakan\"}', NULL, '2025-09-16 03:47:12', '2025-09-16 03:47:12');
INSERT INTO `notifications` VALUES ('754e16b4-7afd-40a6-8ae0-619ed9744a86', 'App\\Notifications\\PlanSubmittedForApproval', 'App\\Models\\User', 1, '{\"message\":\"Rencana produksi #22 untuk produk \'Meja Aluminium Kantor Modern\' menunggu persetujuan Anda.\",\"link\":\"\\/production-plans\\/22\",\"plan_id\":22}', '2025-09-09 00:00:00', '2025-09-09 00:00:00', '2025-09-09 00:00:00');
INSERT INTO `notifications` VALUES ('77c71a11-0a29-4e4c-b1e7-5e266d1b763c', 'App\\Notifications\\PlanSubmittedForApproval', 'App\\Models\\User', 1, '{\"message\":\"Rencana produksi #26 untuk produk \'Meja Ergonomis Minimalis\' menunggu persetujuan Anda.\",\"link\":\"\\/production-plans\\/26\",\"plan_id\":26}', NULL, '2025-09-16 05:56:04', '2025-09-16 05:56:04');
INSERT INTO `notifications` VALUES ('7e60e353-d9d0-42c7-bee7-593fb187c986', 'App\\Notifications\\NewProductionOrderCreated', 'App\\Models\\User', 3, '{\"message\":\"Order produksi baru #7 untuk produk \'Lemari Aluminium Kantor Modern\' telah dibuat dan siap dikerjakan.\",\"link\":\"\\/production-orders\\/7\",\"order_id\":7}', '2025-09-02 02:04:12', '2025-09-02 02:04:12', '2025-09-02 02:04:12');
INSERT INTO `notifications` VALUES ('85110946-61cc-48ed-80cf-510143c924aa', 'App\\Notifications\\NewProductionOrderCreated', 'App\\Models\\User', 3, '{\"message\":\"Order produksi baru #10 untuk produk \'Meja Aluminium Minimalis\' telah dibuat dan siap dikerjakan.\",\"link\":\"\\/production-orders\\/10\",\"order_id\":10}', NULL, '2025-09-16 03:41:23', '2025-09-16 03:41:23');
INSERT INTO `notifications` VALUES ('9f8db6c2-d942-4650-a8ed-d028d35b0b1a', 'App\\Notifications\\PlanSubmittedForApproval', 'App\\Models\\User', 1, '{\"message\":\"Rencana produksi #23 untuk produk \'Meja Aluminium Kantor Modern\' menunggu persetujuan Anda.\",\"link\":\"\\/production-plans\\/23\",\"plan_id\":23}', NULL, '2025-09-16 03:38:57', '2025-09-16 03:38:57');
INSERT INTO `notifications` VALUES ('a08bb0f4-e5fa-4802-9427-da9a758f2366', 'App\\Notifications\\PlanSubmittedForApproval', 'App\\Models\\User', 1, '{\"message\":\"Rencana produksi #13 untuk produk \'Kursi Ergonomis Eksekutif\' menunggu persetujuan Anda.\",\"link\":\"\\/production-plans\\/13\",\"plan_id\":13}', '2025-09-02 01:58:25', '2025-09-02 01:58:25', '2025-09-02 01:58:25');
INSERT INTO `notifications` VALUES ('a58628c7-d2ea-40a8-b669-51a97c82803f', 'App\\Notifications\\ProductionOrderStatusUpdated', 'App\\Models\\User', 1, '{\"message\":\"Status order #6 telah diubah menjadi \'selesai\' oleh Staff Produksi.\",\"link\":\"\\/production-orders\\/6\",\"order_id\":6,\"status\":\"selesai\"}', '2025-09-02 02:36:42', '2025-09-02 02:21:30', '2025-09-02 02:36:42');
INSERT INTO `notifications` VALUES ('aa8e4e0b-4455-4830-b945-bb739b9ad8f4', 'App\\Notifications\\ProductionOrderStatusUpdated', 'App\\Models\\User', 1, '{\"message\":\"Status order #10 telah diubah menjadi \'selesai\' oleh Staff Produksi.\",\"link\":\"\\/production-orders\\/10\",\"order_id\":10,\"status\":\"selesai\"}', NULL, '2025-09-16 03:48:55', '2025-09-16 03:48:55');
INSERT INTO `notifications` VALUES ('adce0ee7-4e3e-47b1-b4d9-754e4b2a814e', 'App\\Notifications\\PlanHasBeenProcessed', 'App\\Models\\User', 2, '{\"message\":\"Rencana produksi #12 yang Anda buat telah di-proses dengan status: DITOLAK.\",\"link\":\"\\/production-plans\\/12\",\"plan_id\":12,\"status\":\"ditolak\"}', '2025-09-02 01:58:15', '2025-09-02 01:58:15', '2025-09-02 01:58:15');
INSERT INTO `notifications` VALUES ('b37bd3af-9236-42bc-a21e-3cc11f2b58a2', 'App\\Notifications\\ProductionOrderStatusUpdated', 'App\\Models\\User', 1, '{\"message\":\"Status order #6 telah diubah menjadi \'diserahkan ke gudang\' oleh Staff Produksi.\",\"link\":\"\\/production-orders\\/6\",\"order_id\":6,\"status\":\"diserahkan_ke_gudang\"}', '2025-09-02 02:36:42', '2025-09-02 02:21:30', '2025-09-02 02:36:42');
INSERT INTO `notifications` VALUES ('baa0e522-ff0f-42fd-9fac-c96053acaeda', 'App\\Notifications\\NewProductionOrderCreated', 'App\\Models\\User', 3, '{\"message\":\"Order produksi baru #8 untuk produk \'Lemari Kayu Jati Kantor Modern\' telah dibuat dan siap dikerjakan.\",\"link\":\"\\/production-orders\\/8\",\"order_id\":8}', '2025-09-02 02:04:12', '2025-09-02 02:04:12', '2025-09-02 02:04:12');
INSERT INTO `notifications` VALUES ('bbbfa4fa-2193-4e81-93fd-a900b0f28a24', 'App\\Notifications\\ProductionOrderStatusUpdated', 'App\\Models\\User', 1, '{\"message\":\"Status order #7 telah diubah menjadi \'sedang dikerjakan\' oleh Staff Produksi.\",\"link\":\"\\/production-orders\\/7\",\"order_id\":7,\"status\":\"sedang_dikerjakan\"}', '2025-09-02 02:36:14', '2025-09-02 01:59:46', '2025-09-02 02:36:17');
INSERT INTO `notifications` VALUES ('bccc19b8-6cf6-4c27-b7c8-4a34336fd991', 'App\\Notifications\\PlanSubmittedForApproval', 'App\\Models\\User', 1, '{\"message\":\"Rencana produksi #14 untuk produk \'Lemari Aluminium Kantor Modern\' menunggu persetujuan Anda.\",\"link\":\"\\/production-plans\\/14\",\"plan_id\":14}', '2025-09-02 01:58:25', '2025-09-02 01:58:25', '2025-09-02 01:58:25');
INSERT INTO `notifications` VALUES ('c7ca1fa0-9b4e-459f-9da9-8774074ce6f3', 'App\\Notifications\\ProductionOrderStatusUpdated', 'App\\Models\\User', 1, '{\"message\":\"Status order #11 telah diubah menjadi \'sedang dikerjakan\' oleh Staff Produksi.\",\"link\":\"\\/production-orders\\/11\",\"order_id\":11,\"status\":\"sedang_dikerjakan\"}', NULL, '2025-09-16 06:22:52', '2025-09-16 06:22:52');
INSERT INTO `notifications` VALUES ('c883957f-e527-403e-9fa2-98b3d5f4e205', 'App\\Notifications\\PlanHasBeenProcessed', 'App\\Models\\User', 2, '{\"message\":\"Rencana produksi #14 yang Anda buat telah di-proses dengan status: DISETUJUI.\",\"link\":\"\\/production-plans\\/14\",\"plan_id\":14,\"status\":\"disetujui\"}', '2025-09-02 01:58:15', '2025-09-02 01:58:15', '2025-09-02 01:58:15');
INSERT INTO `notifications` VALUES ('cc4b2ffe-30e3-41a3-8f94-17f5067f3273', 'App\\Notifications\\ProductionOrderStatusUpdated', 'App\\Models\\User', 1, '{\"message\":\"Status order #9 telah diubah menjadi \'selesai\' oleh Staff Produksi.\",\"link\":\"\\/production-orders\\/9\",\"order_id\":9,\"status\":\"selesai\"}', '2025-09-09 14:32:30', '2025-09-09 14:30:45', '2025-09-09 14:32:30');
INSERT INTO `notifications` VALUES ('d00d6916-3265-43f2-9b78-67f3f96f5610', 'App\\Notifications\\PlanHasBeenProcessed', 'App\\Models\\User', 2, '{\"message\":\"Rencana produksi #25 yang Anda buat telah di-proses dengan status: DISETUJUI.\",\"link\":\"\\/production-plans\\/25\",\"plan_id\":25,\"status\":\"disetujui\"}', NULL, '2025-09-16 03:41:23', '2025-09-16 03:41:23');
INSERT INTO `notifications` VALUES ('d017cbd3-3df7-4ae0-b1d8-2b71f3d6f30f', 'App\\Notifications\\PlanSubmittedForApproval', 'App\\Models\\User', 1, '{\"message\":\"Rencana produksi #25 untuk produk \'Meja Aluminium Minimalis\' menunggu persetujuan Anda.\",\"link\":\"\\/production-plans\\/25\",\"plan_id\":25}', NULL, '2025-09-16 03:40:12', '2025-09-16 03:40:12');
INSERT INTO `notifications` VALUES ('d1cf84e8-9ebf-4bb8-90a2-3c5c3ca1081b', 'App\\Notifications\\ProductionOrderStatusUpdated', 'App\\Models\\User', 1, '{\"message\":\"Status order #8 telah diubah menjadi \'diserahkan ke gudang\' oleh Staff Produksi.\",\"link\":\"\\/production-orders\\/8\",\"order_id\":8,\"status\":\"diserahkan_ke_gudang\"}', '2025-09-02 02:36:42', '2025-09-02 02:21:30', '2025-09-02 02:36:42');
INSERT INTO `notifications` VALUES ('dc2eeaa2-a574-43af-aa6c-a855fd399481', 'App\\Notifications\\NewProductionOrderCreated', 'App\\Models\\User', 3, '{\"message\":\"Order produksi baru #9 untuk produk \'Meja Aluminium Kantor Modern\' telah dibuat dan siap dikerjakan.\",\"link\":\"\\/production-orders\\/9\",\"order_id\":9}', '2025-09-16 03:44:00', '2025-09-09 00:00:00', '2025-09-16 03:44:00');
INSERT INTO `notifications` VALUES ('e22f0dce-2c04-4c4a-944f-f00c7b1dc11f', 'App\\Notifications\\ProductionOrderStatusUpdated', 'App\\Models\\User', 1, '{\"message\":\"Status order #7 telah diubah menjadi \'selesai\' oleh Staff Produksi.\",\"link\":\"\\/production-orders\\/7\",\"order_id\":7,\"status\":\"selesai\"}', '2025-09-02 02:36:42', '2025-09-02 02:21:30', '2025-09-02 02:36:42');
INSERT INTO `notifications` VALUES ('f1bf2e5a-de8e-4c11-9c71-23c27457e2b6', 'App\\Notifications\\ProductionOrderStatusUpdated', 'App\\Models\\User', 1, '{\"message\":\"Status order #10 telah diubah menjadi \'diserahkan ke gudang\' oleh Staff Produksi.\",\"link\":\"\\/production-orders\\/10\",\"order_id\":10,\"status\":\"diserahkan_ke_gudang\"}', NULL, '2025-09-16 03:49:19', '2025-09-16 03:49:19');
INSERT INTO `notifications` VALUES ('f466f77e-2c51-4ae0-8bae-d256c5b72b82', 'App\\Notifications\\PlanSubmittedForApproval', 'App\\Models\\User', 1, '{\"message\":\"Rencana produksi #12 untuk produk \'Lemari Ergonomis Gaming\' menunggu persetujuan Anda.\",\"link\":\"\\/production-plans\\/12\",\"plan_id\":12}', '2025-09-02 01:58:25', '2025-09-02 01:58:25', '2025-09-02 01:58:25');
INSERT INTO `notifications` VALUES ('f5ed19aa-eec5-4eea-9f79-f352bf376e15', 'App\\Notifications\\ProductionOrderStatusUpdated', 'App\\Models\\User', 1, '{\"message\":\"Status order #9 telah diubah menjadi \'sedang dikerjakan\' oleh Staff Produksi.\",\"link\":\"\\/production-orders\\/9\",\"order_id\":9,\"status\":\"sedang_dikerjakan\"}', '2025-09-09 14:32:30', '2025-09-09 00:00:00', '2025-09-09 14:32:30');
INSERT INTO `notifications` VALUES ('fcd7fe1b-9e34-4ebf-949c-ae157c07b353', 'App\\Notifications\\PlanHasBeenProcessed', 'App\\Models\\User', 2, '{\"message\":\"Rencana produksi #26 yang Anda buat telah di-proses dengan status: DISETUJUI.\",\"link\":\"\\/production-plans\\/26\",\"plan_id\":26,\"status\":\"disetujui\"}', NULL, '2025-09-16 06:22:10', '2025-09-16 06:22:10');
INSERT INTO `notifications` VALUES ('fda6c595-f058-48b4-a359-7b1bace61689', 'App\\Notifications\\NewProductionOrderCreated', 'App\\Models\\User', 3, '{\"message\":\"Order produksi baru #11 untuk produk \'Meja Ergonomis Minimalis\' telah dibuat dan siap dikerjakan.\",\"link\":\"\\/production-orders\\/11\",\"order_id\":11}', NULL, '2025-09-16 06:22:10', '2025-09-16 06:22:10');

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE,
  INDEX `personal_access_tokens_expires_at_index`(`expires_at` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------
INSERT INTO `personal_access_tokens` VALUES (1, 'App\\Models\\User', 2, 'auth_token', '2f65243194ae077a52463fe1f507f4ac284fde7a541692b7fb16f48f516d0dee', '[\"*\"]', '2025-09-14 00:56:02', NULL, '2025-09-14 00:52:29', '2025-09-14 00:56:02');
INSERT INTO `personal_access_tokens` VALUES (2, 'App\\Models\\User', 1, 'auth_token', 'ec6505f694682c1110f92b296e516b8f5680aa143b4372d22c97528c594806ce', '[\"*\"]', NULL, NULL, '2025-09-14 00:52:48', '2025-09-14 00:52:48');
INSERT INTO `personal_access_tokens` VALUES (3, 'App\\Models\\User', 3, 'auth_token', 'df1f8447ee0aca685b50e60d42cfe49cb632fcece52dbb1cd8a786ed8b3135a2', '[\"*\"]', NULL, NULL, '2025-09-14 00:53:02', '2025-09-14 00:53:02');
INSERT INTO `personal_access_tokens` VALUES (4, 'App\\Models\\User', 2, 'auth_token', '7f4c7aa66c6622a1dbc1c3a6b2ce1954a24a17d563d5f87d13353f1408e2739c', '[\"*\"]', '2025-09-14 01:02:25', NULL, '2025-09-14 01:01:06', '2025-09-14 01:02:25');
INSERT INTO `personal_access_tokens` VALUES (5, 'App\\Models\\User', 2, 'auth_token', 'dfd4c75940510d496ea016ebd649faf96e5a02b39c47ef71700bfcc8f8851bf6', '[\"*\"]', '2025-09-14 01:27:12', NULL, '2025-09-14 01:08:56', '2025-09-14 01:27:12');
INSERT INTO `personal_access_tokens` VALUES (6, 'App\\Models\\User', 1, 'auth_token', 'f06890f60f1aff7d2ec9ef5a5fbbffdf3d00a9e503f91b7a394e797bc412c6a5', '[\"*\"]', '2025-09-14 02:09:51', NULL, '2025-09-14 01:16:13', '2025-09-14 02:09:51');
INSERT INTO `personal_access_tokens` VALUES (7, 'App\\Models\\User', 3, 'auth_token', '2b3c2ec48d04f01c062bf8ca3668998d78f0919e5f038f8d42ef54008598b5e6', '[\"*\"]', '2025-09-14 01:56:47', NULL, '2025-09-14 01:36:09', '2025-09-14 01:56:47');
INSERT INTO `personal_access_tokens` VALUES (8, 'App\\Models\\User', 2, 'auth_token', 'e095f943c1ff287fef4cf6c1cd1e9bdcf085085cf25730da946ef077ab7b1fbb', '[\"*\"]', '2025-09-14 15:26:41', NULL, '2025-09-14 15:21:33', '2025-09-14 15:26:41');
INSERT INTO `personal_access_tokens` VALUES (9, 'App\\Models\\User', 1, 'auth_token', 'f846d59df2f87753db641932a9388cf650215cacc651e5676751bfab0f8c3994', '[\"*\"]', '2025-09-14 15:33:16', NULL, '2025-09-14 15:23:06', '2025-09-14 15:33:16');
INSERT INTO `personal_access_tokens` VALUES (10, 'App\\Models\\User', 3, 'auth_token', 'bb2e4de7a66c55d71e3276d7ec5ac263d9bef84cd8eab9162e2b51bf51647798', '[\"*\"]', '2025-09-14 15:30:48', NULL, '2025-09-14 15:27:25', '2025-09-14 15:30:48');
INSERT INTO `personal_access_tokens` VALUES (22, 'App\\Models\\User', 1, 'auth_token', 'df98b44f6bd8653a3381058ace85c9f54ba6dd39e73f2b908abfac31287c2c36', '[\"*\"]', '2025-09-14 21:14:30', NULL, '2025-09-14 21:13:28', '2025-09-14 21:14:30');
INSERT INTO `personal_access_tokens` VALUES (23, 'App\\Models\\User', 2, 'auth_token', 'f325dd7dda6555ad956d14810375e84805a92110a9db476fa25e87f06f2d69fb', '[\"*\"]', '2025-09-14 21:14:37', NULL, '2025-09-14 21:13:36', '2025-09-14 21:14:37');
INSERT INTO `personal_access_tokens` VALUES (24, 'App\\Models\\User', 3, 'auth_token', 'ae9f43c55b70e83fb5eb8062ba35f9361354fe9cd9089ba8cb3452bd53480e0d', '[\"*\"]', '2025-09-14 21:15:33', NULL, '2025-09-14 21:14:33', '2025-09-14 21:15:33');
INSERT INTO `personal_access_tokens` VALUES (28, 'App\\Models\\User', 2, 'auth_token', 'bdcf76c915562b1afcf94db89040e4fbf929bae3f567acf07b344c59463baa0e', '[\"*\"]', '2025-09-14 22:57:00', NULL, '2025-09-14 21:30:29', '2025-09-14 22:57:00');
INSERT INTO `personal_access_tokens` VALUES (38, 'App\\Models\\User', 3, 'auth_token', 'eeb83e178cf01aa249c7733ff0d6db895c35967a53407f4fadddd2d19e972cc9', '[\"*\"]', '2025-09-15 16:21:37', NULL, '2025-09-15 13:08:47', '2025-09-15 16:21:37');
INSERT INTO `personal_access_tokens` VALUES (39, 'App\\Models\\User', 1, 'auth_token', 'ed4263279778c12f62b87f64522fb497a712fa818426cb4e2dd2a92ed648c1af', '[\"*\"]', '2025-09-15 13:14:54', NULL, '2025-09-15 13:13:06', '2025-09-15 13:14:54');
INSERT INTO `personal_access_tokens` VALUES (44, 'App\\Models\\User', 3, 'auth_token', '99e99ec7fd4ba302557e960e568022201de5a69ae7c7b8484bb16b8fdc2aa25e', '[\"*\"]', '2025-09-15 23:46:31', NULL, '2025-09-15 23:46:14', '2025-09-15 23:46:31');
INSERT INTO `personal_access_tokens` VALUES (47, 'App\\Models\\User', 3, 'auth_token', '1527c0641d949c2ddee43b767a2a31b9964700e7472c0ca49c13a87cfe0dd81e', '[\"*\"]', '2025-09-16 04:15:50', NULL, '2025-09-16 01:51:54', '2025-09-16 04:15:50');
INSERT INTO `personal_access_tokens` VALUES (55, 'App\\Models\\User', 3, 'auth_token', '1f260ad5045ed0694db931ee31119f6da5d1964dedea2224646475460548f787', '[\"*\"]', '2025-09-16 06:50:08', NULL, '2025-09-16 06:22:23', '2025-09-16 06:50:08');

-- ----------------------------
-- Table structure for production_logs
-- ----------------------------
DROP TABLE IF EXISTS `production_logs`;
CREATE TABLE `production_logs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `production_order_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `status_from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `production_logs_production_order_id_foreign`(`production_order_id` ASC) USING BTREE,
  INDEX `production_logs_user_id_foreign`(`user_id` ASC) USING BTREE,
  CONSTRAINT `production_logs_production_order_id_foreign` FOREIGN KEY (`production_order_id`) REFERENCES `production_orders` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `production_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of production_logs
-- ----------------------------
INSERT INTO `production_logs` VALUES (11, 6, 3, 'menunggu', 'sedang_dikerjakan', 'Order #6 Sudah diterima, dan telah siap dikerjakan oleh Team A', '2025-09-16 01:59:46', NULL);
INSERT INTO `production_logs` VALUES (12, 7, 3, 'menunggu', 'sedang_dikerjakan', 'Order #7 Sudah diterima, dan telah siap dikerjakan oleh Team B', '2025-09-16 02:09:09', NULL);
INSERT INTO `production_logs` VALUES (13, 8, 3, 'menunggu', 'sedang_dikerjakan', 'Order #8 Sudah diterima, dan telah siap dikerjakan oleh Team C', '2025-09-16 02:09:19', NULL);
INSERT INTO `production_logs` VALUES (14, 6, 3, 'sedang_dikerjakan', 'selesai', 'Order #6 Telah siap dan selesai oleh Team A, siap dikirimkan', '2025-09-16 02:21:30', NULL);
INSERT INTO `production_logs` VALUES (15, 7, 3, 'sedang_dikerjakan', 'selesai', 'Order #7 telah diselesaikan Team B, siap dikirmkan', '2025-09-16 02:21:59', NULL);
INSERT INTO `production_logs` VALUES (16, 8, 3, 'sedang_dikerjakan', 'selesai', 'Order #8 telah diselesaikan Team C, namun ada 2 barang yang reject tidak lolos QC', '2025-09-16 02:22:40', NULL);
INSERT INTO `production_logs` VALUES (17, 6, 3, 'selesai', 'diserahkan_ke_gudang', 'Order #6 telah dikirimkan ke Gudang, diterima oleh Gudang A', '2025-09-16 02:34:52', NULL);
INSERT INTO `production_logs` VALUES (18, 7, 3, 'selesai', 'diserahkan_ke_gudang', 'Order #7 telah selesai, dan dikirimkan ke Gudang A', '2025-09-16 02:35:16', NULL);
INSERT INTO `production_logs` VALUES (19, 8, 3, 'selesai', 'diserahkan_ke_gudang', 'Order #8 telah selesai, diserahkan ke Gudang A', '2025-09-16 02:35:40', NULL);
INSERT INTO `production_logs` VALUES (20, 9, 3, 'menunggu', 'sedang_dikerjakan', 'Order #9 telah diterima, dan dikerjakan oleh Team A', '2025-09-09 00:00:00', NULL);
INSERT INTO `production_logs` VALUES (21, 9, 3, 'sedang_dikerjakan', 'selesai', 'Order #9 telah diselesaikan Team A, dan siap dikirimkan ke gudang', '2025-09-09 14:30:45', NULL);
INSERT INTO `production_logs` VALUES (22, 9, 3, 'selesai', 'diserahkan_ke_gudang', 'Order #9 telah diserahkan ke Gudang A dengan selamat', '2025-09-09 14:32:30', NULL);
INSERT INTO `production_logs` VALUES (23, 10, 3, 'menunggu', 'sedang_dikerjakan', 'Order #10 telah diterima, dan dikerjakan oleh Team A', '2025-09-16 03:47:12', NULL);
INSERT INTO `production_logs` VALUES (24, 10, 3, 'sedang_dikerjakan', 'selesai', 'Order #10 telah diselesaikan, dan siap dikirimkan ke Gudang B', '2025-09-16 03:48:55', NULL);
INSERT INTO `production_logs` VALUES (25, 10, 3, 'selesai', 'diserahkan_ke_gudang', 'Order #10 telah diterima oleh Gudang B', '2025-09-16 03:49:19', NULL);
INSERT INTO `production_logs` VALUES (26, 11, 3, 'menunggu', 'sedang_dikerjakan', 'Order #11 diterima, dan dikerjkan oleh Team C', '2025-09-16 06:22:52', NULL);
INSERT INTO `production_logs` VALUES (27, 11, 3, 'sedang_dikerjakan', 'selesai', 'Order #11 telah selesai, namun Jumlah Aktua yang di buat Melebihi target yaitu 20 dan Jumlah Reject 5', '2025-09-16 06:24:43', NULL);
INSERT INTO `production_logs` VALUES (28, 11, 3, 'selesai', 'diserahkan_ke_gudang', 'Order #11 telah dikirmkan ke Gudang B', '2025-09-16 06:26:48', NULL);

-- ----------------------------
-- Table structure for production_orders
-- ----------------------------
DROP TABLE IF EXISTS `production_orders`;
CREATE TABLE `production_orders`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `production_plan_id` bigint UNSIGNED NOT NULL,
  `status` enum('menunggu','sedang_dikerjakan','selesai','diserahkan_ke_gudang') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'menunggu',
  `quantity_actual` int NULL DEFAULT NULL,
  `quantity_reject` int NULL DEFAULT 0,
  `started_at` timestamp NULL DEFAULT NULL,
  `finished_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `production_orders_production_plan_id_foreign`(`production_plan_id` ASC) USING BTREE,
  CONSTRAINT `production_orders_production_plan_id_foreign` FOREIGN KEY (`production_plan_id`) REFERENCES `production_plans` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of production_orders
-- ----------------------------
INSERT INTO `production_orders` VALUES (6, 13, 'diserahkan_ke_gudang', 12, 0, '2025-09-02 01:59:46', '2025-09-02 02:21:30', '2025-09-02 01:57:07', '2025-09-02 02:34:52', '2025-09-02 02:34:52');
INSERT INTO `production_orders` VALUES (7, 14, 'diserahkan_ke_gudang', 13, 0, '2025-09-02 02:09:08', '2025-09-02 02:21:59', '2025-09-02 01:57:13', '2025-09-02 02:35:16', '2025-09-02 02:35:16');
INSERT INTO `production_orders` VALUES (8, 15, 'diserahkan_ke_gudang', 15, 2, '2025-09-02 02:09:19', '2025-09-02 02:22:40', '2025-09-02 01:57:17', '2025-09-02 02:35:40', '2025-09-16 02:35:40');
INSERT INTO `production_orders` VALUES (9, 22, 'diserahkan_ke_gudang', 9, 0, '2025-09-09 00:00:00', '2025-09-09 14:30:45', '2025-09-09 00:00:00', '2025-09-09 14:32:30', '2025-09-09 14:32:30');
INSERT INTO `production_orders` VALUES (10, 25, 'diserahkan_ke_gudang', 16, 0, '2025-09-16 03:47:12', '2025-09-16 03:48:54', '2025-09-16 03:41:23', '2025-09-16 03:49:18', '2025-09-16 03:49:18');
INSERT INTO `production_orders` VALUES (11, 26, 'diserahkan_ke_gudang', 20, 5, '2025-09-16 06:22:52', '2025-09-16 06:24:43', '2025-09-16 06:22:10', '2025-09-16 06:26:48', '2025-09-16 06:26:48');

-- ----------------------------
-- Table structure for production_plans
-- ----------------------------
DROP TABLE IF EXISTS `production_plans`;
CREATE TABLE `production_plans`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint UNSIGNED NOT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `due_date` date NOT NULL,
  `status` enum('dibuat','menunggu_persetujuan','disetujui','ditolak','diproses') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dibuat',
  `approved_by` bigint UNSIGNED NULL DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `production_plans_product_id_foreign`(`product_id` ASC) USING BTREE,
  INDEX `production_plans_created_by_foreign`(`created_by` ASC) USING BTREE,
  CONSTRAINT `production_plans_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `production_plans_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of production_plans
-- ----------------------------
INSERT INTO `production_plans` VALUES (12, 1, 2, 11, '2025-09-02', 'ditolak', NULL, NULL, '2025-09-02 01:54:31', '2025-09-02 01:54:31');
INSERT INTO `production_plans` VALUES (13, 2, 2, 12, '2025-09-02', 'disetujui', 1, '2025-09-02 01:54:31', '2025-09-02 01:54:31', '2025-09-02 01:54:31');
INSERT INTO `production_plans` VALUES (14, 3, 2, 13, '2025-09-02', 'disetujui', 1, '2025-09-02 01:54:31', '2025-09-02 01:54:31', '2025-09-02 01:54:31');
INSERT INTO `production_plans` VALUES (15, 4, 2, 15, '2025-09-02', 'disetujui', 1, '2025-09-02 01:54:31', '2025-09-02 01:54:31', '2025-09-02 01:54:31');
INSERT INTO `production_plans` VALUES (22, 5, 2, 9, '2025-09-13', 'disetujui', 1, '2025-09-09 00:00:00', '2025-09-09 00:00:00', '2025-09-09 00:00:00');
INSERT INTO `production_plans` VALUES (23, 5, 2, 20, '2025-09-18', 'menunggu_persetujuan', NULL, NULL, '2025-09-16 03:38:57', '2025-09-16 03:38:57');
INSERT INTO `production_plans` VALUES (24, 6, 2, 18, '2025-09-19', 'ditolak', NULL, NULL, '2025-09-16 03:39:32', '2025-09-16 03:41:20');
INSERT INTO `production_plans` VALUES (25, 7, 2, 16, '2025-09-20', 'disetujui', 1, '2025-09-16 03:41:23', '2025-09-16 03:40:12', '2025-09-16 03:41:23');
INSERT INTO `production_plans` VALUES (26, 11, 2, 11, '2025-09-20', 'disetujui', 1, '2025-09-16 06:22:10', '2025-09-16 05:56:03', '2025-09-16 06:22:10');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `products_sku_unique`(`sku` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'Lemari Ergonomis Gaming', 'SKU-1', 'Asperiores illum laudantium delectus amet vero unde laboriosam non et nobis sunt quidem rerum est pariatur minus et rerum.', '2025-09-13 15:40:37', '2025-09-13 15:40:37');
INSERT INTO `products` VALUES (2, 'Kursi Ergonomis Eksekutif', 'SKU-2', 'Qui iste est atque et et iusto fugiat cumque nam dignissimos dolores expedita tenetur qui.', '2025-09-13 15:40:37', '2025-09-13 15:40:37');
INSERT INTO `products` VALUES (3, 'Lemari Aluminium Kantor Modern', 'SKU-3', 'Nostrum nam accusantium ab harum perspiciatis quo officia delectus commodi non illo totam deserunt eos molestias totam officia dolor hic.', '2025-09-13 15:40:38', '2025-09-13 15:40:38');
INSERT INTO `products` VALUES (4, 'Lemari Kayu Jati Kantor Modern', 'SKU-4', 'Beatae dicta quas voluptatem consequatur dolorem quos aut excepturi quae voluptas quos laborum ea.', '2025-09-13 15:40:38', '2025-09-13 15:40:38');
INSERT INTO `products` VALUES (5, 'Meja Aluminium Kantor Modern', 'SKU-5', 'Beatae reiciendis voluptas et odit labore voluptates et tenetur voluptatem quas suscipit hic quo animi ea dolores est occaecati temporibus.', '2025-09-13 15:40:38', '2025-09-13 15:40:38');
INSERT INTO `products` VALUES (6, 'Lemari Kayu Jati Eksekutif', 'SKU-6', 'Dolore qui doloremque deserunt qui et laboriosam enim voluptate consequatur soluta.', '2025-09-13 15:40:38', '2025-09-13 15:40:38');
INSERT INTO `products` VALUES (7, 'Meja Aluminium Minimalis', 'SKU-7', 'Cum dignissimos eligendi tempora eos totam voluptatibus explicabo aut hic et aut et inventore quidem eaque in laborum.', '2025-09-13 15:40:38', '2025-09-13 15:40:38');
INSERT INTO `products` VALUES (8, 'Meja Ergonomis Eksekutif', 'SKU-8', 'Reprehenderit qui accusantium dolorem consequuntur minus autem magni culpa ab esse ut error laboriosam velit quod natus impedit enim.', '2025-09-13 15:40:38', '2025-09-13 15:40:38');
INSERT INTO `products` VALUES (9, 'Kursi Besi Industrial Gaming', 'SKU-9', 'Perferendis qui vero non autem est itaque pariatur odit a.', '2025-09-13 15:40:38', '2025-09-13 15:40:38');
INSERT INTO `products` VALUES (10, 'Meja Kayu Jati Eksekutif', 'SKU-10', 'Omnis qui iure mollitia sequi enim quia et praesentium iusto aut.', '2025-09-13 15:40:38', '2025-09-13 15:40:38');
INSERT INTO `products` VALUES (11, 'Meja Ergonomis Minimalis', 'SKU-11', 'Facere est modi id dolore odio et aspernatur harum qui nihil in.', '2025-09-13 15:40:38', '2025-09-13 15:40:38');
INSERT INTO `products` VALUES (12, 'Kursi Ergonomis Minimalis', 'SKU-12', 'Voluptas facere ea modi eius reprehenderit occaecati ea nihil sunt iure nam reiciendis inventore veritatis veritatis voluptas reiciendis inventore nam.', '2025-09-13 15:40:38', '2025-09-13 15:40:38');
INSERT INTO `products` VALUES (13, 'Meja Ergonomis Eksekutif', 'SKU-13', 'Quia necessitatibus soluta iusto qui animi explicabo aut ipsam doloremque ut consequatur.', '2025-09-13 15:40:38', '2025-09-13 15:40:38');
INSERT INTO `products` VALUES (14, 'Lemari Aluminium Gaming', 'SKU-14', 'Accusamus ut autem nostrum et accusamus tempore aut quia perspiciatis aut rerum aperiam quas consequatur accusamus temporibus.', '2025-09-13 15:40:38', '2025-09-13 15:40:38');
INSERT INTO `products` VALUES (15, 'Rak Buku Kayu Jati Eksekutif', 'SKU-15', 'Culpa vel in voluptatem culpa voluptatem aut sed repellendus at quo pariatur ad inventore sit rem soluta et aut molestiae officiis aut.', '2025-09-13 15:40:38', '2025-09-13 15:40:38');
INSERT INTO `products` VALUES (16, 'Meja Kayu Jati Kantor Modern', 'SKU-16', 'Nihil possimus qui omnis ut veritatis in non laudantium quaerat harum quis suscipit laborum dolore.', '2025-09-13 15:40:38', '2025-09-13 15:40:38');
INSERT INTO `products` VALUES (17, 'Meja Besi Industrial Kantor Modern', 'SKU-17', 'Et in ea omnis sint corrupti distinctio inventore repudiandae minus quae mollitia voluptates est cumque culpa quibusdam perferendis quia.', '2025-09-13 15:40:38', '2025-09-13 15:40:38');
INSERT INTO `products` VALUES (18, 'Meja Kayu Jati Eksekutif', 'SKU-18', 'Et aut itaque saepe aliquid quo quisquam nisi voluptas tempora magnam nostrum repellendus nemo reprehenderit deleniti minus.', '2025-09-13 15:40:38', '2025-09-13 15:40:38');
INSERT INTO `products` VALUES (19, 'Kursi Ergonomis Kantor Modern', 'SKU-19', 'Quod nisi eos et officia ea voluptatem dicta possimus vitae cum atque earum cum qui et qui.', '2025-09-13 15:40:38', '2025-09-13 15:40:38');
INSERT INTO `products` VALUES (20, 'Meja Aluminium Eksekutif', 'SKU-20', 'Id est dolorem dolores nesciunt magnam quisquam eum laborum magnam qui ut voluptatem quos et aut aliquid minima nihil.', '2025-09-13 15:40:38', '2025-09-13 15:40:38');

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sessions_user_id_index`(`user_id` ASC) USING BTREE,
  INDEX `sessions_last_activity_index`(`last_activity` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('KFaT7BsbJKMQNQcUIeeHnMnwY4fq1PtosPJ1lSZa', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEFSbjJ2QUxablFBS1BWcVZMSGgwQWkzVHFKSnZwcWRKY3k1dVpuUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1757785901);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('manager','staff_ppic','staff_produksi') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Manager Produksi', 'manager@elitech.id', NULL, '$2y$12$AOJmrJMNna5HjS5VWS4UZu6Xn5PF3KRp9c1I4JmDJSY6hUUwDTRO.', 'manager', NULL, '2025-09-13 15:40:36', '2025-09-13 15:40:36');
INSERT INTO `users` VALUES (2, 'Staff PPIC', 'ppic@elitech.id', NULL, '$2y$12$19tRfYQblFJirC.hNie5h.OE/S/Xo66uAJxQOMraJ47J226Vvy60K', 'staff_ppic', NULL, '2025-09-13 15:40:37', '2025-09-13 15:40:37');
INSERT INTO `users` VALUES (3, 'Staff Produksi', 'produksi@elitech.id', NULL, '$2y$12$tiyJVBCJWI6jJkkgW31MA.ZrCGT.qorkejgWUurqhmineeTmQEa7O', 'staff_produksi', NULL, '2025-09-13 15:40:37', '2025-09-13 15:40:37');

SET FOREIGN_KEY_CHECKS = 1;

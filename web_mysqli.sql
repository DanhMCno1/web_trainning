/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100432
 Source Host           : 127.0.0.1:3306
 Source Schema         : web_mysqli

 Target Server Type    : MySQL
 Target Server Version : 100432
 File Encoding         : 65001

 Date: 10/04/2024 18:47:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_admin
-- ----------------------------
DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE `tbl_admin`  (
  `id_admin` int NOT NULL AUTO_INCREMENT,
  `username` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` int NOT NULL,
  `admin_status` int NOT NULL,
  PRIMARY KEY (`id_admin`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_admin
-- ----------------------------
INSERT INTO `tbl_admin` VALUES (4, 'danhprod1', 0, 1);

-- ----------------------------
-- Table structure for tbl_baiviet
-- ----------------------------
DROP TABLE IF EXISTS `tbl_baiviet`;
CREATE TABLE `tbl_baiviet`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tenbaiviet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tomtat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `noidung` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_danhmuc` int NOT NULL,
  `tinhtrang` int NOT NULL,
  `hinhanh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_baiviet
-- ----------------------------
INSERT INTO `tbl_baiviet` VALUES (11, 'Thời sự trưa', 'Nguyễn Phương Hằng được giảm án, luật quy định sao?', 'Dù không kháng cáo nhưng tại tòa, Nguyễn Phương Hằng khóc xin được giảm nhẹ hình phạt dù chỉ 1 ngày. Tòa phúc thẩm nhận định có tình tiết giảm nhẹ mới nên đã tuyên giảm 3 tháng tù cho bị cáo này.\r\nNgày 4.4, TAND cấp cao tại TP.HCM xét xử phúc thẩm đã chấp nhận toàn bộ kháng cáo xin giảm nhẹ hình phạt của 4 bị cáo; chấp nhận đề nghị xin giảm nhẹ hình phạt tại tòa của bị cáo Nguyễn Phương Hằng (Tổng giám đốc Công ty CP Đại Nam, Bình Dương) dù trước đó bị cáo Hằng không có đơn kháng cáo về hình phạt.\r\n\r\nNguyễn Phương Hằng được giảm án, luật quy định sao?- Ảnh 1.\r\nBị cáo Nguyễn Phương Hằng được giảm 3 tháng tù dù không kháng cáo bản án sơ thẩm\r\n\r\nNHẬT THỊNH\r\n\r\nCụ thể, mức án tòa phúc thẩm tuyên giảm cho Nguyễn Phương Hằng từ 3 năm tù xuống còn 2 năm 9 tháng. Bị cáo Nguyễn Phương Hằng bị bắt từ ngày 24.3.2022, đến nay bị cáo đã bị tạm giam 2 năm 11 ngày. Như vậy, bị cáo Nguyễn Phương Hằng còn phải thi hành thêm gần 9 tháng tù nữa.\r\n\r\nTòa phúc thẩm tuyên giảm cho bị cáo Đặng Anh Quân (tiến sĩ luật, giảng viên Trường đại học Luật TP.HCM) từ 2 năm 6 tháng còn 2 năm tù. Bị cáo Đặng Anh Quân bị tạm giam ngày 24.2.2023.\r\n\r\nNguyễn Phương Hằng được giảm án, luật quy định sao?\r\n\r\n3 bị cáo còn lại được tòa phúc thẩm giảm từ 1 năm 6 tháng tù xuống còn 1 năm tù, là cấp dưới của Nguyễn Phương Hằng, gồm: Huỳnh Công Tân (Trưởng phòng Truyền thông Công ty CP Đại Nam), Nguyễn Thị Mai Nhi (trợ lý của bị cáo Nguyễn Phương Hằng), Lê Thị Thu Hà (nhân viên Công ty CP Đại Nam).\r\n\r\nĐối với 4 bị cáo có đơn kháng cáo xin giảm nhẹ hình phạt, HĐXX phúc thẩm nhận định các bị cáo đều hối hận về sai phạm của mình, có tình tiết giảm nhẹ mới là sau xét xử sơ thẩm đã khắc phục toàn bộ thiệt hại.\r\n\r\nRiêng bị cáo Nguyễn Phương Hằng, dù không kháng cáo nhưng tại tòa phúc thẩm, bị cáo đã bật khóc, mong tòa giảm án cho bị cáo dù chỉ 1 ngày vì \"một chút danh dự\".\r\n\r\nHĐXX phúc thẩm nhận định dù không kháng cáo, nhưng tại tòa bị cáo và luật sư có đề nghị xin giảm án. Đồng thời, Nguyễn Phương Hằng đã nộp tiền bồi thường thiệt hại, tiền án phí dân sự sơ thẩm, đây cũng được xem là tình tiết giảm nhẹ mới, nên căn cứ điều 357 bộ luật Tố tụng hình sự giảm nhẹ một phần hình phạt cho Nguyễn Phương Hằng.\r\n\r\nNguyễn Phương Hằng được giảm án, luật quy định sao?- Ảnh 2.\r\nHĐXX phúc thẩm vụ án Nguyễn Phương Hằng và đồng phạm\r\n\r\nNHẬT THỊNH\r\n\r\nĐây không phải là vụ án đầu tiên, mà tòa phúc thẩm giảm án cho bị cáo dù trước đó bị cáo không có đơn kháng cáo xin giảm nhẹ hình phạt.\r\n\r\nĐiển hình trong vụ án lừa đảo chiếm đoạt tài sản xảy ra tại Công ty CP địa ốc Alibaba, ở giai đoạn xét xử phúc thẩm, TAND cấp cao tại TP.HCM cũng đã giảm án cho 7 bị cáo dù các bị cáo này không có kháng cáo.\r\n\r\nXem nhanh 12h ngày 5.4: Vì sao Nguyễn Phương Hằng được giảm án\r\n\r\nVề việc áp dụng pháp luật giảm án cho bị cáo không kháng cáo, luật sư Trần Thanh Duy (Đoàn luật TP.Hà Nội) cho biết, khoản 3 Điều 357 bộ luật Tố tụng hình sự quy định HĐXX phúc thẩm có thể sửa bản án sơ thẩm, giảm nhẹ một phần hình phạt cho những bị cáo không có kháng cáo, nếu tại phiên tòa phúc thẩm có tình tiết mới có lợi cho bị cáo, hoặc có căn cứ xác định bản án sơ thẩm đã tuyên không đúng với tính chất, mức độ, hậu quả của hành vi phạm tội, nhân thân bị cáo.\r\n\r\n\"Việc bị cáo không có kháng cáo nhưng tại phiên tòa phúc thẩm nếu có căn cứ sửa bản án sơ thẩm theo hướng có lợi cho bị cáo thì tòa vẫn áp dụng được\", luật sư Duy nhấn mạnh.', 5, 1, '1712293889_0503thoisuv8-1709640820473512612854.mp4.thumb1.jpg');
INSERT INTO `tbl_baiviet` VALUES (23, 'Bản tin', 'Dự báo thời tiết.', 'Dự báo thời tiết 5/4/2024, nhiều tỉnh ở Bắc Bộ có mưa giông, trong khi đó khu vực Tây Bắc Bộ và miền Trung giảm nắng nóng.\r\nTheo Trung tâm Dự báo khí tượng thuỷ văn quốc gia, do ảnh hưởng của không khí lạnh tăng cường yếu lệch Đông nén rãnh áp thấp kết hợp với hội tụ gió yếu trên mực 1.500m nên từ đêm qua tới sáng nay (5/4), ở khu vực vùng núi và trung du Bắc Bộ có mưa rào và giông rải rác, cục bộ có mưa to với lượng mưa từ 15-30mm, có nơi trên 50mm.\r\n\r\nW-nang-nong.jpg\r\nThời tiết hôm nay, nhiều nơi giảm nắng nóng. Ảnh: Minh Hiền\r\nMưa chủ yếu tập trung ở khu vực Lào Cai, Yên Bái, Tuyên Quang, Cao Bằng. Dù lượng mưa không lớn nhưng  trong mưa giông có khả năng xảy ra lốc, sét, mưa đá và gió giật mạnh.\r\n\r\nMưa lớn cục bộ có khả năng gây ra lũ quét trên các sông, suối nhỏ, sạt lở đất trên sườn dốc và tình trạng ngập úng tại các vùng trũng, thấp. Các tỉnh vùng núi phía Đông Bắc Bộ trời chuyển mát.\r\n\r\nTrong khi đó, nắng nóng thu hẹp ở khu vực phía Tây Bắc Bộ và Trung Bộ, thời tiết dễ chịu hơn những ngày trước.\r\n\r\nDự báo thời tiết 5/4/2024 các vùng trên cả nước:\r\nPhía Tây Bắc Bộ\r\nCó mây, chiều tối và đêm có mưa rào và giông vài nơi; ngày nắng, riêng khu Tây Bắc ngày nắng nóng, có nơi nắng nóng gay gắt. Gió nhẹ. Trong mưa giông có khả năng xảy ra lốc, sét, mưa đá và gió giật mạnh. Nhiệt độ thấp nhất 23-26 độ, riêng khu Tây Bắc 20-23 độ. Nhiệt độ cao nhất 29-32 độ; riêng khu Tây Bắc 35-37 độ, có nơi trên 37 độ.\r\n\r\nPhía Đông Bắc Bộ\r\nNhiều mây, có mưa rào và giông vài nơi, riêng vùng núi và trung du có mưa rào và giông rải rác, cục bộ có mưa to. Gió đông nam đến đông cấp 2-3. Vùng núi trời chuyển mát. Trong mưa giông có khả năng xảy ra lốc, sét, mưa đá và gió giật mạnh. Nhiệt độ thấp nhất 23-26 độ, vùng núi có nơi dưới 22 độ. Nhiệt độ cao nhất 27-30 độ, riêng vùng núi 25-28 độ.\r\n\r\nThanh Hóa - Thừa Thiên Huế\r\nCó mây, chiều tối và đêm có mưa rào và giông vài nơi; ngày nắng, riêng phía Nam ngày nắng nóng và nắng nóng gay gắt. Gió tây nam cấp 2-3. Trong mưa giông có khả năng xảy ra lốc, sét, mưa đá và gió giật mạnh. Nhiệt độ thấp nhất 23-26 độ. Nhiệt độ cao nhất : Phía Bắc 31-34 độ; phía Nam 35-38 độ, có nơi trên 38 độ.\r\n\r\nĐà Nẵng đến Bình Thuận\r\nCó mây, chiều tối và đêm có mưa rào và giông vài nơi; ngày nắng, riêng phía Bắc (Đà Nẵng đến Phú Yên) ngày nắng nóng, có nơi nắng nóng gay gắt. Gió đông nam đến nam cấp 2-3. Trong mưa giông có khả năng xảy ra lốc, sét, mưa đá và gió giật mạnh. Nhiệt độ thấp nhất 25-28 độ. Nhiệt độ cao nhất: Phía Bắc 35-37 độ, có nơi trên 37 độ; phía Nam 32-34 độ.\r\n\r\nTây Nguyên\r\nCó mây, chiều tối và đêm có mưa rào và giông vài nơi; ngày nắng nóng, có nơi nắng nóng gay gắt. Gió nhẹ. Trong mưa giông có khả năng xảy ra lốc, sét, mưa đá và gió giật mạnh. Nhiệt độ thấp nhất 22-25 độ. Nhiệt độ cao nhất 33-36 độ, có nơi trên 37 độ.\r\n\r\nNam Bộ\r\nCó mây, chiều tối và đêm có mưa rào và giông vài nơi; ngày nắng nóng, có nơi nắng nóng gay gắt. Gió nhẹ. Trong mưa giông có khả năng xảy ra lốc, sét, mưa đá và gió giật mạnh. Nhiệt độ thấp nhất 25-28 độ. Nhiệt độ cao nhất 34-37 độ, có nơi trên 37 độ.\r\n\r\nHà Nội\r\nCó mây, có mưa rào và giông vài nơi. Gió đông nam đến đông cấp 2-3. Trong mưa giông có khả năng xảy ra lốc, sét, mưa đá và gió giật mạnh. Nhiệt độ thấp nhất 24-26 độ. Nhiệt độ cao nhất 28-30 độ.', 5, 1, '1712308159_btt2019.jpg');
INSERT INTO `tbl_baiviet` VALUES (24, 'Học tập ', '5 mẹo cho trẻ dễ trập trung học tập.', 'Trẻ chơi xếp hình, ô chữ, tập thể thao, tập thói quen hoàn thành từng nhiệm vụ nhỏ có thể tập trung lâu hơn.\r\n\r\nKhó tập trung là vấn đề của nhiều trẻ em. Cha mẹ có thể nhận thấy khi bé chuyển sự chú ý từ việc này sang việc khác trong vòng vài phút. Ví dụ trẻ đang làm toán rồi chuyển sang nghịch chiếc bút chì. Theo thời gian, thói quen này có thể ảnh hưởng đến khả năng học hỏi, thực hiện nhiệm vụ. Dưới đây là một số cách giúp bé tập trung hơn.\r\n\r\nTạo không gian nghiêm túc\r\n\r\nCha mẹ cố gắng không để bé phân tâm khi thực hiện các nhiệm vụ. Truyền hình, âm nhạc, tiếng ồn và điện thoại di động dễ phiền nhiễu trẻ. Khi bé đang học hoặc tham gia một số hoạt động nào đó, bạn cố gắng giảm những nguồn gây xao lãng này. Tùy vào tính cách của từng bé, cha mẹ hiểu điều gì phù hợp nhất với con.\r\n\r\nChơi trò chơi\r\n\r\nNhiều trò chơi như ô chữ, ghép hình có thể giúp bé cải thiện mức độ tập trung. Các trò này yêu cầu trẻ tập trung để hoàn thành công việc, hình thành khả năng chú ý và kiên nhẫn.\r\n\r\nTrẻ em dưới hai tuổi có thể chơi ghép các khối hình đơn giản như tam giác, hình tròn. Trẻ lớn thử sức với tranh xếp hình tùy theo độ tuổi và khả năng. Tranh xếp hình nên chọn theo sở thích của bé để tăng hứng thú, tò mò.\r\n\r\nViệc duy trì một thói quen mỗi ngày giúp bé tăng tính tập trung. Ảnh: Kim Uyên\r\nDuy trì một thói quen mỗi ngày giúp bé tăng tính tập trung. Ảnh: Kim Uyên\r\n\r\nHình thành thói quen\r\n\r\nHình thành thói quen tốt mỗi ngày quan trọng đối với sự phát triển của trẻ. Ví dụ cha mẹ định hướng bé làm bài tập về nhà mỗi ngày vào cùng một thời điểm. Lặp lại cùng một việc bé sẽ hình thành ý thức tốt hơn và tự giác thực hiện theo thói quen.\r\n\r\nTập luyện\r\n\r\nThiền không chỉ có ích cho người lớn mà còn có tác dụng tương tự đối với trẻ em. Thiền 10 phút mỗi ngày hỗ trợ bé tập trung tốt hơn. Tập thể dục cũng cải thiện năng lực trí tuệ.\r\n\r\nCha mẹ khuyến khích con chơi thể thao. Ví dụ bóng rổ có thể thu hút những bé nhút nhát tham gia hoạt động tập thể. Trẻ học cách kiểm soát cơ thể thông qua việc phòng thủ, tấn công. Thực hiện các đường chuyền nhanh để bé phát triển tư duy, phản xạ, kỹ năng lừa bóng khuyến khích sự phối hợp giữa mắt và chân.\r\n\r\nCác môn thể thao đòi hỏi khả năng ghi nhớ, lặp lại và học hỏi, đều liên quan đến khả năng tiếp thu kiến thức trên lớp.\r\n\r\nChia những mục tiêu nhỏ\r\n\r\nĐặt ra những mục tiêu nhỏ cho bé để con không cảm thấy quá tải. Làm một việc trong thời gian dài trẻ thường cảm thấy nhàm chán và mất tập trung. Chia mục tiêu thành những phần nhỏ hơn giúp bé dễ dàng hoàn thành chúng đúng thời hạn, hứng thú với những nhiệm vụ mới.\r\n\r\nCha mẹ cho bé thời gian thư giãn giữa hai hoạt động để tận hưởng, chuẩn bị cho nhiệm vụ tiếp theo một cách trọn vẹn.', 5, 1, '1712307927_ban-tin.jpg');
INSERT INTO `tbl_baiviet` VALUES (25, '', '<p>danhprod1</p>\r\n', '', 6, 1, '1712382448_0503thoisuv8-1709640820473512612854.mp4.thumb1.jpg');

-- ----------------------------
-- Table structure for tbl_cart
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cart`;
CREATE TABLE `tbl_cart`  (
  `id_cart` int NOT NULL AUTO_INCREMENT,
  `id_khachhang` int NOT NULL,
  `code_cart` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cart_status` int NOT NULL,
  PRIMARY KEY (`id_cart`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_cart
-- ----------------------------
INSERT INTO `tbl_cart` VALUES (8, 20, '6865', 0);
INSERT INTO `tbl_cart` VALUES (9, 20, '9497', 0);
INSERT INTO `tbl_cart` VALUES (10, 20, '7593', 0);
INSERT INTO `tbl_cart` VALUES (11, 20, '3505', 0);
INSERT INTO `tbl_cart` VALUES (12, 21, '847', 1);
INSERT INTO `tbl_cart` VALUES (13, 21, '5057', 1);
INSERT INTO `tbl_cart` VALUES (14, 21, '5604', 1);
INSERT INTO `tbl_cart` VALUES (15, 21, '5665', 1);
INSERT INTO `tbl_cart` VALUES (16, 21, '6206', 1);
INSERT INTO `tbl_cart` VALUES (17, 21, '7651', 1);
INSERT INTO `tbl_cart` VALUES (18, 21, '6101', 1);
INSERT INTO `tbl_cart` VALUES (19, 21, '4201', 1);
INSERT INTO `tbl_cart` VALUES (20, 21, '1677', 1);
INSERT INTO `tbl_cart` VALUES (21, 21, '2015', 1);
INSERT INTO `tbl_cart` VALUES (22, 21, '6314', 1);
INSERT INTO `tbl_cart` VALUES (23, 21, '2997', 0);
INSERT INTO `tbl_cart` VALUES (24, 0, '3233', 1);
INSERT INTO `tbl_cart` VALUES (25, 0, '662', 1);
INSERT INTO `tbl_cart` VALUES (26, 0, '7164', 1);
INSERT INTO `tbl_cart` VALUES (27, 0, '7471', 1);
INSERT INTO `tbl_cart` VALUES (28, 0, '3142', 1);
INSERT INTO `tbl_cart` VALUES (29, 0, '6148', 1);
INSERT INTO `tbl_cart` VALUES (30, 0, '3139', 1);
INSERT INTO `tbl_cart` VALUES (31, 20, '8373', 1);
INSERT INTO `tbl_cart` VALUES (32, 20, '8663', 1);
INSERT INTO `tbl_cart` VALUES (33, 20, '65', 1);
INSERT INTO `tbl_cart` VALUES (34, 20, '2878', 1);
INSERT INTO `tbl_cart` VALUES (35, 20, '2467', 1);
INSERT INTO `tbl_cart` VALUES (36, 20, '6752', 1);
INSERT INTO `tbl_cart` VALUES (37, 20, '8057', 1);
INSERT INTO `tbl_cart` VALUES (38, 20, '2216', 1);
INSERT INTO `tbl_cart` VALUES (39, 20, '3303', 1);
INSERT INTO `tbl_cart` VALUES (40, 20, '1348', 1);
INSERT INTO `tbl_cart` VALUES (41, 20, '6558', 1);
INSERT INTO `tbl_cart` VALUES (42, 20, '9334', 1);
INSERT INTO `tbl_cart` VALUES (43, 20, '4854', 1);
INSERT INTO `tbl_cart` VALUES (44, 20, '7892', 1);
INSERT INTO `tbl_cart` VALUES (45, 20, '131', 1);
INSERT INTO `tbl_cart` VALUES (46, 20, '3811', 1);

-- ----------------------------
-- Table structure for tbl_cart_details
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cart_details`;
CREATE TABLE `tbl_cart_details`  (
  `id_cart_details` int NOT NULL AUTO_INCREMENT,
  `code_cart` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_sanpham` int NOT NULL,
  `soluongmua` int NOT NULL,
  PRIMARY KEY (`id_cart_details`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_cart_details
-- ----------------------------
INSERT INTO `tbl_cart_details` VALUES (9, '3505', 28, 1);
INSERT INTO `tbl_cart_details` VALUES (10, '847', 26, 1);
INSERT INTO `tbl_cart_details` VALUES (11, '5057', 26, 1);
INSERT INTO `tbl_cart_details` VALUES (12, '5604', 26, 1);
INSERT INTO `tbl_cart_details` VALUES (13, '5665', 26, 1);
INSERT INTO `tbl_cart_details` VALUES (14, '6206', 26, 1);
INSERT INTO `tbl_cart_details` VALUES (15, '7651', 26, 1);
INSERT INTO `tbl_cart_details` VALUES (16, '6101', 26, 1);
INSERT INTO `tbl_cart_details` VALUES (17, '4201', 26, 1);
INSERT INTO `tbl_cart_details` VALUES (18, '1677', 26, 1);
INSERT INTO `tbl_cart_details` VALUES (19, '2015', 26, 1);
INSERT INTO `tbl_cart_details` VALUES (20, '3233', 28, 1);
INSERT INTO `tbl_cart_details` VALUES (21, '662', 28, 1);
INSERT INTO `tbl_cart_details` VALUES (22, '7164', 28, 1);
INSERT INTO `tbl_cart_details` VALUES (23, '7471', 28, 1);
INSERT INTO `tbl_cart_details` VALUES (24, '3142', 28, 1);
INSERT INTO `tbl_cart_details` VALUES (25, '8373', 28, 4);
INSERT INTO `tbl_cart_details` VALUES (26, '8663', 28, 1);
INSERT INTO `tbl_cart_details` VALUES (27, '65', 28, 1);
INSERT INTO `tbl_cart_details` VALUES (28, '2878', 28, 1);
INSERT INTO `tbl_cart_details` VALUES (29, '2467', 28, 1);
INSERT INTO `tbl_cart_details` VALUES (30, '6752', 28, 1);
INSERT INTO `tbl_cart_details` VALUES (31, '8057', 28, 1);
INSERT INTO `tbl_cart_details` VALUES (32, '2216', 28, 1);
INSERT INTO `tbl_cart_details` VALUES (33, '3303', 28, 1);
INSERT INTO `tbl_cart_details` VALUES (34, '1348', 28, 1);
INSERT INTO `tbl_cart_details` VALUES (35, '6558', 28, 1);
INSERT INTO `tbl_cart_details` VALUES (36, '9334', 28, 1);
INSERT INTO `tbl_cart_details` VALUES (37, '4854', 28, 1);
INSERT INTO `tbl_cart_details` VALUES (38, '7892', 28, 1);
INSERT INTO `tbl_cart_details` VALUES (39, '131', 28, 1);
INSERT INTO `tbl_cart_details` VALUES (40, '3811', 28, 1);

-- ----------------------------
-- Table structure for tbl_dangky
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dangky`;
CREATE TABLE `tbl_dangky`  (
  `id_dangky` int NOT NULL AUTO_INCREMENT,
  `tenkhachhang` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `diachi` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `matkhau` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dienthoai` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_dangky`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_dangky
-- ----------------------------
INSERT INTO `tbl_dangky` VALUES (22, 'Bùi Công Danh', '0989066517zz@gmail.com', 'mễ trì', 'c4ca4238a0b923820dcc509a6f75849b', '0989066517');

-- ----------------------------
-- Table structure for tbl_danhmuc
-- ----------------------------
DROP TABLE IF EXISTS `tbl_danhmuc`;
CREATE TABLE `tbl_danhmuc`  (
  `id_danhmuc` int NOT NULL AUTO_INCREMENT,
  `tendanhmuc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `thutu` int NOT NULL,
  PRIMARY KEY (`id_danhmuc`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_danhmuc
-- ----------------------------
INSERT INTO `tbl_danhmuc` VALUES (15, 'Tai nghe', 2);
INSERT INTO `tbl_danhmuc` VALUES (16, 'Ốp lưng', 3);
INSERT INTO `tbl_danhmuc` VALUES (17, 'Iphone', 4);
INSERT INTO `tbl_danhmuc` VALUES (18, 'Sạc ', 4);

-- ----------------------------
-- Table structure for tbl_danhmucbaiviet
-- ----------------------------
DROP TABLE IF EXISTS `tbl_danhmucbaiviet`;
CREATE TABLE `tbl_danhmucbaiviet`  (
  `id_baiviet` int NOT NULL AUTO_INCREMENT,
  `tendanhmuc_baiviet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `thutu` int NOT NULL,
  PRIMARY KEY (`id_baiviet`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_danhmucbaiviet
-- ----------------------------
INSERT INTO `tbl_danhmucbaiviet` VALUES (5, 'bài viết 1 ', 1);
INSERT INTO `tbl_danhmucbaiviet` VALUES (6, 'bài viết 2', 2);

-- ----------------------------
-- Table structure for tbl_lienhe
-- ----------------------------
DROP TABLE IF EXISTS `tbl_lienhe`;
CREATE TABLE `tbl_lienhe`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `thongtinlienhe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_lienhe
-- ----------------------------
INSERT INTO `tbl_lienhe` VALUES (1, '<p>SDT: 97207237273</p>\r\n\r\n<p>FB: facebook.com</p>\r\n\r\n<p>Youtube: youtube.com</p>\r\n\r\n<p>Cảm ơn sự ủng hộ của c&aacute;c bạn ! :-))</p>\r\n');

-- ----------------------------
-- Table structure for tbl_momo
-- ----------------------------
DROP TABLE IF EXISTS `tbl_momo`;
CREATE TABLE `tbl_momo`  (
  `id_momo` int NOT NULL AUTO_INCREMENT,
  `partner_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `order_id` int NOT NULL,
  `amount` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `order_info` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `order_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trans_id` int NOT NULL,
  `pay_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `code_cart` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_momo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_momo
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_sanpham
-- ----------------------------
DROP TABLE IF EXISTS `tbl_sanpham`;
CREATE TABLE `tbl_sanpham`  (
  `id_sanpham` int NOT NULL AUTO_INCREMENT,
  `tensanpham` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `masp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `giasp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `soluong` int NOT NULL,
  `hinhanh` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tomtat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `noidung` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tinhtrang` int NOT NULL,
  `id_danhmuc` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_sanpham`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_sanpham
-- ----------------------------
INSERT INTO `tbl_sanpham` VALUES (25, 'Tai nghe Bluetooth True Wireless AVA+ FreeGo A20', '001', '100000', 1, '1712737879_Tai-nghe-Sony-1.jpg', '<h3><a href=\"https://www.thegioididong.com/tai-nghe/tai-nghe-bluetooth-true-wireless-ava-freego-a20\" target=\"_blank\">Tai nghe Bluetooth True Wireless AVA+ FreeGo A20</a>&nbsp;với gam m&agrave;u thanh lịch, kiểu d&aacute;ng đẹp mắt, &acirc;m thanh sống động v&agrave; r&otilde; r&agrave;ng, kết nối kh&ocirc;ng d&acirc;y nhanh ch&oacute;ng, mang đến cho người d&ugrave;ng những trải nghiệm tuyệt vời.</h3>\r\n', '<h3>&bull;&nbsp;Vẻ ngo&agrave;i&nbsp;tai nghe&nbsp;sang trọng, m&agrave;u sắc thời trang, tiện lợi mang theo bất cứ đ&acirc;u m&agrave; kh&ocirc;ng qu&aacute; chiếm chỗ cất giữ.</h3>\r\n\r\n<p>&bull;&nbsp;Tai nghe trang bị chất &acirc;m sống động, mạnh mẽ, mang đến những trải nghiệm nghe nhạc tối ưu.</p>\r\n\r\n<p>&bull;&nbsp;Hỗ trợ kết nối&nbsp;<a href=\"https://www.thegioididong.com/tai-nghe\" target=\"_blank\">tai nghe</a>&nbsp;với thiết bị một c&aacute;ch mượt m&agrave; v&agrave; ổn định th&ocirc;ng qua Bluetooth 5.3.</p>\r\n\r\n<p>&bull;&nbsp;T&iacute;ch hợp t&iacute;nh năng chống nước IPX3, bảo vệ tai nghe an to&agrave;n khi tiếp x&uacute;c với lượng nhỏ mồ h&ocirc;i hoặc nước. Tuy nhi&ecirc;n, khả năng chống nước sẽ giảm theo thời gian, bạn n&ecirc;n hạn chế để tai nghe gặp nước.</p>\r\n\r\n<p>&bull;&nbsp;<a href=\"https://www.thegioididong.com/tai-nghe-ava\" target=\"_blank\">Tai nghe AVA+</a>&nbsp;tương th&iacute;ch với hệ điều h&agrave;nh: iOS, macOS, Android, Windows.</p>\r\n\r\n<p>&bull;&nbsp;Tổng thời gian sử dụng của tai nghe khi kết hợp hộp sạc l&ecirc;n tới 20 giờ.</p>\r\n\r\n<p>&bull;&nbsp;Trang bị mic đ&agrave;m thoại, cho ph&eacute;p bạn nghe gọi với khả năng thu &acirc;m r&otilde; r&agrave;ng v&agrave; chi tiết.</p>\r\n', 1, 15);
INSERT INTO `tbl_sanpham` VALUES (26, 'Iphone 13', '002', '100000', 1, '1711938592_iphone13.jpg', '<p>Iphone 13 trắng ng&agrave; 128GB</p>\r\n', '<h3>Trong khi sức h&uacute;t đến từ bộ 4 phi&ecirc;n bản&nbsp;iPhone 12&nbsp;vẫn chưa nguội đi, th&igrave;&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone\" target=\"_blank\">h&atilde;ng điện thoại&nbsp;Apple</a>&nbsp;đ&atilde; mang đến cho người d&ugrave;ng một si&ecirc;u phẩm mới iPhone 13 với&nbsp;nhiều cải tiến th&uacute; vị sẽ mang lại những trải nghiệm hấp dẫn nhất cho người d&ugrave;ng.</h3>\r\n\r\n<h3>Hiệu năng vượt trội nhờ chip Apple A15 Bionic</h3>\r\n\r\n<p>Con chip&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-chip-apple-a15-bionic-suc-manh-cuc-khung-duoc-he-1339072\" target=\"_blank\">Apple A15 Bionic</a>&nbsp;si&ecirc;u mạnh được sản xuất tr&ecirc;n quy tr&igrave;nh 5 nm gi&uacute;p&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-13\" target=\"_blank\">iPhone 13</a>&nbsp;đạt hiệu năng ấn tượng, với CPU nhanh hơn 50%,&nbsp;GPU nhanh hơn 30% so với c&aacute;c đối thủ trong c&ugrave;ng ph&acirc;n kh&uacute;c.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-1-1.jpg\" onclick=\"return false;\"><img alt=\"Chip Apple A15 Bionic mạnh mẽ - iPhone 13 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-1-1.jpg\" /></a></p>\r\n\r\n<p>Nhờ hiệu năng được cải tiến, người d&ugrave;ng c&oacute; được những trải nghiệm tốt hơn tr&ecirc;n điện thoại khi d&ugrave;ng c&aacute;c ứng dụng chỉnh sửa ảnh hay chiến c&aacute;c tựa game đồ họa cao mượt m&agrave;.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-2.jpg\" onclick=\"return false;\"><img alt=\"Đồ họa mượt mà - iPhone 13 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-2.jpg\" /></a></p>\r\n\r\n<p>iPhone 13 trang bị&nbsp;bộ nhớ trong 128 GB&nbsp;dung lượng l&yacute; tưởng&nbsp;cho ph&eacute;p bạn thỏa th&iacute;ch lưu trữ mọi nội dung theo &yacute; muốn m&agrave; kh&ocirc;ng lo nhanh đầy bộ nhớ.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-19.jpg\" onclick=\"return false;\"><img alt=\"Dung lượng bộ nhớ - iPhone 13 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-19.jpg\" /></a></p>\r\n\r\n<h3>Tốc độ 5G tốt hơn&nbsp;</h3>\r\n\r\n<p>Mạng 5G được cải thiện chất lượng với nhiều băng tần hơn, với 5G gi&uacute;p điện thoại xem trực tuyến hay tải xuống c&aacute;c ứng dụng v&agrave; t&agrave;i liệu đều đạt tốc độ nhanh ch&oacute;ng. Kh&ocirc;ng chỉ vậy, si&ecirc;u phẩm mới n&agrave;y c&ograve;n c&oacute; chế độ dữ liệu th&ocirc;ng minh, tự động ph&aacute;t hiện v&agrave; giảm tải tốc độ mạng để tiết kiệm năng lượng khi kh&ocirc;ng cần d&ugrave;ng tốc độ cao.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-4.jpg\" onclick=\"return false;\"><img alt=\"Hỗ trợ kết nối 5G hiện đại - iPhone 13 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-4.jpg\" /></a></p>\r\n\r\n<h3>M&agrave;n h&igrave;nh Super Retina XDR độ s&aacute;ng cao, tiết kiệm pin</h3>\r\n\r\n<p>iPhone 13 sử dụng tấm nền OLED với k&iacute;ch thước m&agrave;n h&igrave;nh 6.1 inch&nbsp;cho chất lượng m&agrave;u sắc v&agrave; chi tiết h&igrave;nh ảnh sắc n&eacute;t, sống động, độ ph&acirc;n giải đạt 1170 x 2532 Pixels.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-6.jpg\" onclick=\"return false;\"><img alt=\"Màn hình OLED 6.1 inch - iPhone 13 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-6.jpg\" /></a></p>\r\n\r\n<p>Nhờ c&oacute; c&ocirc;ng nghệ Super Retina XDR gi&uacute;p cho m&aacute;y đạt&nbsp;độ s&aacute;ng 800 nits, tối đa l&ecirc;n đến 1200 nits c&ugrave;ng dải m&agrave;u rộng P3, tỷ lệ tương phản lớn gi&uacute;p ổn định tốt m&agrave;u sắc v&agrave; chất lượng h&igrave;nh ảnh hiển thị trong nhiều điều kiện s&aacute;ng kh&aacute;c nhau, kể cả m&ocirc;i trường nắng gắt hay &aacute;nh s&aacute;ng ch&oacute;i.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-5.jpg\" onclick=\"return false;\"><img alt=\"Độ sáng đạt 1200 nits - iPhone 13 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-5.jpg\" /></a></p>\r\n\r\n<p>Ph&iacute;a ngo&agrave;i m&agrave;n h&igrave;nh c&ograve;n được phủ lớp oleophobic hạn chế t&igrave;nh trạng b&aacute;m bụi bẩn v&agrave; mồ h&ocirc;i do tay người d&ugrave;ng, giữ m&agrave;n h&igrave;nh lu&ocirc;n sạch v&agrave; tinh tế hơn. V&agrave; trang bị&nbsp;k&iacute;nh cường lực Ceramic Shield gi&uacute;p m&agrave;n h&igrave;nh của m&aacute;y được an to&agrave;n hơn trước những vết xước, va đập trong qu&aacute; tr&igrave;nh sử dụng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-7.jpg\" onclick=\"return false;\"><img alt=\"Trang bị kính cường lực Ceramic Shield - iPhone 13 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-7.jpg\" /></a></p>\r\n\r\n<h3>Cụm camera k&eacute;p nổi bật với nhiều cải tiến</h3>\r\n\r\n<p>Cụm camera k&eacute;p ph&iacute;a sau tr&ecirc;n iPhone 13 đều sở hữu độ ph&acirc;n giải 12 MP, camera ch&iacute;nh&nbsp;gi&uacute;p thu được nhiều &aacute;nh s&aacute;ng hơn, tăng khả năng thu s&aacute;ng l&ecirc;n đến 47% n&ecirc;n chất lượng ảnh chụp cũng cải thiện hơn so với bản tiền nhiệm.&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-goc-rong\" target=\"_blank\">Điện thoại c&oacute;&nbsp;camera g&oacute;c si&ecirc;u rộng</a>&nbsp;cho g&oacute;c nh&igrave;n&nbsp;120 độ gi&uacute;p thu được nhiều chi tiết hơn, dễ d&agrave;ng ghi lại những khung cảnh n&uacute;i non h&ugrave;ng vĩ, ảnh chụp nh&oacute;m đ&ocirc;ng người.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-8.jpg\" onclick=\"return false;\"><img alt=\"Cụm camera sau sắc nét - iPhone 13 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-8.jpg\" /></a></p>\r\n\r\n<p>Cụm camera cũng được trang bị t&iacute;nh năng chống rung quang học Sensor Shift gi&uacute;p lấy n&eacute;t nhanh ch&oacute;ng, khả năng chụp đ&ecirc;m cũng trở n&ecirc;n r&otilde; n&eacute;t m&agrave; &iacute;t bị nhiễu hạt, hay quay video cũng rất ổn định v&agrave; mượt m&agrave; hơn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-9.jpg\" onclick=\"return false;\"><img alt=\"Chụp đêm siêu rõ nét - iPhone 13 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-9.jpg\" /></a></p>\r\n\r\n<p>&ldquo;Chế độ điện ảnh&rdquo; cho ph&eacute;p camera tr&ecirc;n iPhone 13 tự động l&agrave;m mờ hậu cảnh trong video để đối tượng lu&ocirc;n được lấy n&eacute;t nổi bật. Đặc biệt người d&ugrave;ng c&oacute; thể thay đổi ti&ecirc;u điểm để chọn chủ thể mong muốn trong khung h&igrave;nh khi sử dụng quay video, nhờ đ&oacute; tạo n&ecirc;n những video chuy&ecirc;n nghiệp, như &yacute; hơn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-10.jpg\" onclick=\"return false;\"><img alt=\"Chế độ điện ảnh độc đáo - iPhone 13 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-10.jpg\" /></a></p>\r\n\r\n<p>Chế độ chụp Smart HDR 4 nhận diện tối đa 4 người trong một khung h&igrave;nh, tiến h&agrave;nh tối ưu h&oacute;a &aacute;nh s&aacute;ng v&agrave; tương phản, tone m&agrave;u da cho từng người để ho&agrave;n thiện bức ảnh đẹp m&agrave; kh&ocirc;ng cần qua chỉnh sửa.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-11.jpg\" onclick=\"return false;\"><img alt=\"Chế độ Smart HDR 4 - iPhone 13 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-11.jpg\" /></a></p>\r\n\r\n<p>Camera trước vẫn nằm trong tai thỏ, độ ph&acirc;n giải cũng đạt 12 MP với c&aacute;c c&ocirc;ng nghệ chụp ảnh chuy&ecirc;n nghiệp như hiệu ứng bokeh, chế độ điện ảnh, Animoji v&agrave; Memoji để bạn tự tin thể hiện m&igrave;nh trước ống k&iacute;nh, kh&ocirc;ng lo lắng che giấu khuyết điểm.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-12.jpg\" onclick=\"return false;\"><img alt=\"Camera trước 12 MP - iPhone 13 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-12.jpg\" /></a></p>\r\n\r\n<h3>Sang trọng, đẳng cấp hơn về ngoại h&igrave;nh</h3>\r\n\r\n<p>iPhone 13&nbsp;c&oacute; thiết kế nguy&ecirc;n khối vu&ocirc;ng vắn như tiền nhiệm, khung viền được l&agrave;m từ nh&ocirc;m c&ugrave;ng mặt lưng k&iacute;nh sang trọng, cao cấp.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-13.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế nguyên khối sang trọng, đẳng cấp - iPhone 13 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-13.jpg\" /></a></p>\r\n\r\n<p>Ngoại h&igrave;nh kh&ocirc;ng qu&aacute; kh&aacute;c biệt so với tiền nhiệm, nhưng tỷ lệ m&agrave;n h&igrave;nh so với khung m&aacute;y tốt hơn, phần tai thỏ nhỏ hơn 20% gia tăng diện t&iacute;ch trải nghiệm khi lướt web, xem phim, chơi game.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-14.jpg\" onclick=\"return false;\"><img alt=\"Màn hình cải tiến - iPhone 13 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-14.jpg\" /></a></p>\r\n\r\n<p>Điểm kh&aacute;c biệt lớn nhất trong ngoại h&igrave;nh c&oacute; lẽ ch&iacute;nh l&agrave; c&aacute;c cảm biến camera được đặt ch&eacute;o thay v&igrave; xếp thẳng h&agrave;ng như&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-12-128gb\" target=\"_blank\">iPhone 12</a>, tạo điểm nhận diện đặc trưng, mới mẻ v&agrave; đẹp mắt, sang chảnh hơn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-15.jpg\" onclick=\"return false;\"><img alt=\"Cụm camera sau với diện mạo mới - iPhone 13 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-15.jpg\" /></a></p>\r\n\r\n<p>M&agrave;u sắc tr&ecirc;n mẫu iPhone mới n&agrave;y cũng đa dạng hơn gồm Trắng, Đen, Đỏ, Xanh dương v&agrave; Hồng mới mẻ dễ t&ugrave;y chọn cho mọi người d&ugrave;ng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-16.jpg\" onclick=\"return false;\"><img alt=\"Có nhiều màu sắc để lựa chọn - iPhone 13 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-16.jpg\" /></a></p>\r\n\r\n<p>iPhone 13 hỗ trợ chuẩn kh&aacute;ng nước v&agrave; bụi IP68, bạn sẽ y&ecirc;n t&acirc;m sử dụng hơn khi đem theo thiết bị để chụp ảnh khi bơi hay những lần v&ocirc; t&igrave;nh l&agrave;m đổ nước, c&oacute; cơn mưa đột ngột.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-17.jpg\" onclick=\"return false;\"><img alt=\"Khả năng kháng nước, bụi - iPhone 13 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-17.jpg\" /></a></p>\r\n\r\n<h3>Thời lượng pin cũng được cải thiện</h3>\r\n\r\n<p>Theo c&ocirc;ng bố của h&atilde;ng, iPhone 13 c&oacute; thời lượng pin tăng th&ecirc;m 2.5 tiếng so với thế hệ trước, cho thời gian sử dụng l&acirc;u hơn, phục vụ hiệu quả với người d&ugrave;ng c&oacute; nhu cầu sử dụng tần suất cao.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-18.jpg\" onclick=\"return false;\"><img alt=\"Chip A15 tối ưu hóa năng lượng - iPhone 13 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-18.jpg\" /></a></p>\r\n\r\n<p>Hỗ trợ&nbsp;sạc nhanh&nbsp;20 W gi&uacute;p nạp đầy 50% pin chỉ trong khoảng 30 ph&uacute;t. Đi k&egrave;m theo c&aacute;c c&ocirc;ng nghệ sạc kh&ocirc;ng d&acirc;y&nbsp;ti&ecirc;n tiến như chuẩn Qi hay MagSafe.</p>\r\n\r\n<p>Lưu &yacute;: Củ sạc nhanh 20 W sẽ kh&ocirc;ng đi k&egrave;m trong hộp khi mua.</p>\r\n\r\n<p>T&oacute;m lại, với những n&acirc;ng cấp v&agrave; cải tiến mạnh mẽ về hiệu năng, camera đa chức năng, m&igrave;nh nghĩ rằng iPhone 13 128GB sẽ l&agrave; một chiếc điện thoại cao cấp rất đ&aacute;ng được đầu tư v&agrave; sử dụng.</p>\r\n\r\n<p>Tham khảo ngay loạt sản phẩm iPhone mới nhất năm 2022 nhiều mẫu m&atilde;:&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone-14-series\" target=\"_blank\">iPhone 14</a>,&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-14-pro\" target=\"_blank\">iPhone 14 Pro</a>,&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-14-plus\" target=\"_blank\">iPhone 14 Plus</a>,&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-14-pro-max\" target=\"_blank\">iPhone 14 Pro Max</a>&nbsp;khuyến m&atilde;i giảm gi&aacute; đến h&agrave;ng triệu k&egrave;m nhiều qu&agrave; tặng k&egrave;m theo hấp dẫn đang chờ bạn.</p>\r\n', 1, 17);
INSERT INTO `tbl_sanpham` VALUES (27, 'Tai nghe vt', '005', '100000', 1, '1712736997_tai-nghe-viettle-1.jpg', '<p>Trắng , bền</p>\r\n', '<h3>Với gam m&agrave;u thanh lịch, kiểu d&aacute;ng đẹp mắt, &acirc;m thanh sống động v&agrave; r&otilde; r&agrave;ng, kết nối kh&ocirc;ng d&acirc;y nhanh ch&oacute;ng, hỗ trợ Game Mode,...&nbsp;<a href=\"https://tai-nghe-bluetooth-true-wireless-ava-freego-pt62/\" target=\"_blank\">Tai nghe Bluetooth True Wireless AVA+ FreeGo PT62</a>&nbsp;sẽ đ&aacute;p ứng tốt c&aacute;c nhu cầu sử dụng cơ bản của người d&ugrave;ng.</h3>\r\n\r\n<p>&bull;&nbsp;<a href=\"https://www.thegioididong.com/tai-nghe-ava\" target=\"_blank\">Tai nghe AVA+</a>&nbsp;mang vẻ ngo&agrave;i đẹp mắt, nhỏ gọn, tiện lợi mang theo bất cứ đ&acirc;u m&agrave; kh&ocirc;ng qu&aacute; chiếm chỗ cất giữ.</p>\r\n\r\n<p>&bull; Bạn c&oacute; thể sẵn s&agrave;ng nhận cuộc gọi khi đeo&nbsp;<a href=\"https://www.thegioididong.com/tai-nghe\" target=\"_blank\">tai nghe</a>&nbsp;với mic thoại trang bị sẵn. Ngo&agrave;i ra, bạn c&oacute; thể dễ d&agrave;ng chuyển đổi chế độ Game Mode nhanh ch&oacute;ng khi cần chơi game hoặc muốn giảm tối đa độ trễ khi xem phim, nghe nhạc,...</p>\r\n\r\n<p>&bull; Kết nối mượt m&agrave; v&agrave; ổn định với c&aacute;c thiết bị sử dụng nhiều hệ điều h&agrave;nh như iOS, macOS, Android, Windows, th&ocirc;ng qua Bluetooth 5.4 hiện đại.</p>\r\n\r\n<p>&bull;&nbsp;<a href=\"https://www.thegioididong.com/tai-nghe-khong-day\" target=\"_blank\">Tai nghe True Wireless</a>&nbsp;trang bị chất &acirc;m sống động, phong ph&uacute;, mang đến cho bạn những gi&acirc;y ph&uacute;t giải tr&iacute; thư gi&atilde;n, đắm ch&igrave;m.</p>\r\n\r\n<p>&bull; Bạn c&oacute; thể thoải m&aacute;i sử dụng tai nghe m&agrave; kh&ocirc;ng phải lo lắng về việc bị gi&aacute;n đoạn do hết pin nhờ thời lượng d&ugrave;ng li&ecirc;n tục l&ecirc;n tới 7 giờ, sạc đầy trong 1.5 giờ bằng c&aacute;ch đặt tai nghe trở lại trong hộp sạc, d&ugrave;ng tai nghe kết hợp c&ugrave;ng hộp sạc cho tổng thời gian l&ecirc;n đến 20 giờ</p>\r\n', 1, 15);
INSERT INTO `tbl_sanpham` VALUES (28, 'Ốp lưng iPhone 15 Pro', '008', '200000', 1, '1712292035_ốp lưng.jpg', '<p>Nhựa cứng viền dẻo JM Bayer II</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>Đặc điểm nổi bật</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Vẻ ngo&agrave;i của&nbsp;<a href=\"https://www.thegioididong.com/op-lung-flipcover\" target=\"_blank\">ốp lưng</a>&nbsp;trong suốt, ph&ugrave; hợp với hầu hết người d&ugrave;ng.</li>\r\n	<li><a href=\"https://www.thegioididong.com/op-lung-flipcover-cho-iphone-15-pro\" target=\"_blank\">Ốp lưng iPhone 15 Pro</a>&nbsp;được l&agrave;m từ nhựa cứng viền dẻo, &ocirc;m s&aacute;t th&acirc;n m&aacute;y.</li>\r\n	<li><a href=\"https://www.thegioididong.com/op-lung-flipcover-jm\" target=\"_blank\">Ốp lưng JM</a>&nbsp;giảm thiểu trầy xước, bề mặt &iacute;t b&aacute;m bẩn v&agrave; dễ vệ sinh.</li>\r\n	<li>Ốp lưng&nbsp;gọn chắc, mặt lưng phẳng mịn, cầm &ecirc;m ta</li>\r\n</ul>\r\n\r\n<p>&gt;</p>\r\n\r\n<p>&gt;</p>\r\n', 1, 16);
INSERT INTO `tbl_sanpham` VALUES (30, 'Ốp lưng MagSafe cho iPhone 15 Pro Max ', '009', '59000', 1, '1712736761_op-lung2.jpg', '<p>Nhựa trong Apple</p>\r\n', '<p>Đặc điểm nổi bật</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.thegioididong.com/op-lung-flipcover-cho-iphone-15-pro-max\" target=\"_blank\">Ốp lưng iPhone 15 Pro Max</a>&nbsp;c&oacute; thiết kế mỏng nhẹ cho thao t&aacute;c cầm nắm, di chuyển nhẹ nh&agrave;ng.&nbsp;</li>\r\n	<li>Chất liệu&nbsp;nhựa dẻo mềm mại,&nbsp;<a href=\"https://www.thegioididong.com/op-lung-flipcover\" target=\"_blank\">ốp lưng</a>&nbsp;trong suốt gi&uacute;p ph&ocirc; trọn vẻ đẹp tinh tế của điện thoại.</li>\r\n	<li>Hỗ trợ sạc kh&ocirc;ng d&acirc;y MagSafe gi&uacute;p bổ sung năng lượng dễ d&agrave;ng m&agrave; kh&ocirc;ng cần th&aacute;o ốp.</li>\r\n	<li>K&iacute;ch thước&nbsp;<a href=\"https://www.thegioididong.com/op-lung-flipcover-iphone\" target=\"_blank\">ốp lưng Apple</a>&nbsp;&ocirc;m kh&iacute;t với&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-15-pro-max\" target=\"_blank\">iPhone 15 Pro Max</a>, bảo vệ m&aacute;y an to&agrave;n khi cọ x&aacute;t, va quẹt.</li>\r\n	<li><strong>Lưu &yacute;: Thanh to&aacute;n trước khi mở seal.</strong></li>\r\n</ul>\r\n', 1, 16);
INSERT INTO `tbl_sanpham` VALUES (31, 'Ốp lưng iPhone 15', '010', '69000', 1, '1712736824_op_lung3.jpg', '<p>Nhựa dẻo TPU Spigen Liquid Air ACS06790 Ch&iacute;nh h&atilde;ng</p>\r\n', '<p>Đặc điểm nổi bật</p>\r\n\r\n<ul>\r\n	<li>Ngoại h&igrave;nh&nbsp;<a href=\"https://www.thegioididong.com/op-lung-flipcover-cho-iphone-15\" target=\"_blank\">ốp lưng iPhone 15</a>&nbsp;đơn giản, sắc m&agrave;u thanh lịch.</li>\r\n	<li>Chất liệu nhựa dẻo gi&uacute;p&nbsp;<a href=\"https://www.thegioididong.com/op-lung-flipcover\" target=\"_blank\">ốp lưng</a>&nbsp;đ&agrave;n hồi, hạn chế t&igrave;nh trạng m&agrave;i m&ograve;n, nứt g&atilde;y.</li>\r\n	<li>Chế tạo&nbsp;<a href=\"https://www.thegioididong.com/op-lung-flipcover-spigen\" target=\"_blank\">ốp lưng Spigen</a>&nbsp;c&oacute; k&iacute;ch cỡ ph&ugrave; hợp cho&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-15\" target=\"_blank\">iPhone 15</a>.</li>\r\n	<li>H&igrave;nh dạng vừa kh&iacute;t gi&uacute;p giữ cho m&aacute;y an to&agrave;n khi di chuyển, sử dụng.</li>\r\n</ul>\r\n', 1, 16);
INSERT INTO `tbl_sanpham` VALUES (32, 'Ốp lưng Galaxy A55', '011', '70000', 1, '1712736889_op_lung4.jpg', '<p>Nhựa cứng viền dẻo JM Anti Yellow</p>\r\n', '<p>Đặc điểm nổi bật</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.thegioididong.com/op-lung-flipcover-galaxy-a55\" target=\"_blank\">Ốp lưng Galaxy A55</a>&nbsp;mỏng gọn, kh&ocirc;ng l&agrave;m ảnh hưởng tới trải nghiệm cầm nắm điện thoại của người d&ugrave;ng.</li>\r\n	<li>Thiết kế&nbsp;<a href=\"https://www.thegioididong.com/op-lung-flipcover\" target=\"_blank\">ốp lưng</a>&nbsp;trong suốt, kiểu d&aacute;ng tối giản gi&uacute;p t&ocirc;n l&ecirc;n diện mạo của điện thoại.</li>\r\n	<li>C&aacute;c ph&iacute;m bấm được chế t&aacute;c ch&iacute;nh x&aacute;c, k&iacute;ch thước vừa vặn với chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-a55-5g\" target=\"_blank\">Galaxy A55</a>.</li>\r\n	<li>L&agrave;m từ chất liệu nhựa cứng ở mặt lưng gi&uacute;p bảo vệ điện thoại hiệu quả, viền ốp dẻo dai hỗ trợ th&aacute;o lắp dễ d&agrave;ng.</li>\r\n</ul>\r\n', 1, 16);
INSERT INTO `tbl_sanpham` VALUES (33, 'Tai nghe Bluetooth True Wireless AVA+ FreeGo PT62', '012', '499000', 1, '1712737057_tai-nghe-bluetooth1.jpg', '<p>Mang vẻ ngo&agrave;i đẹp mắt, nhỏ gọn, tiện lợi mang theo bất cứ đ&acirc;u m&agrave; kh&ocirc;ng qu&aacute; chiếm chỗ cất giữ.</p>\r\n', '<h3>Với gam m&agrave;u thanh lịch, kiểu d&aacute;ng đẹp mắt, &acirc;m thanh sống động v&agrave; r&otilde; r&agrave;ng, kết nối kh&ocirc;ng d&acirc;y nhanh ch&oacute;ng, hỗ trợ Game Mode,...&nbsp;<a href=\"https://tai-nghe-bluetooth-true-wireless-ava-freego-pt62/\" target=\"_blank\">Tai nghe Bluetooth True Wireless AVA+ FreeGo PT62</a>&nbsp;sẽ đ&aacute;p ứng tốt c&aacute;c nhu cầu sử dụng cơ bản của người d&ugrave;ng.</h3>\r\n\r\n<p>&bull;&nbsp;<a href=\"https://www.thegioididong.com/tai-nghe-ava\" target=\"_blank\">Tai nghe AVA+</a>&nbsp;mang vẻ ngo&agrave;i đẹp mắt, nhỏ gọn, tiện lợi mang theo bất cứ đ&acirc;u m&agrave; kh&ocirc;ng qu&aacute; chiếm chỗ cất giữ.</p>\r\n\r\n<p>&bull; Bạn c&oacute; thể sẵn s&agrave;ng nhận cuộc gọi khi đeo&nbsp;<a href=\"https://www.thegioididong.com/tai-nghe\" target=\"_blank\">tai nghe</a>&nbsp;với mic thoại trang bị sẵn. Ngo&agrave;i ra, bạn c&oacute; thể dễ d&agrave;ng chuyển đổi chế độ Game Mode nhanh ch&oacute;ng khi cần chơi game hoặc muốn giảm tối đa độ trễ khi xem phim, nghe nhạc,...</p>\r\n\r\n<p>&bull; Kết nối mượt m&agrave; v&agrave; ổn định với c&aacute;c thiết bị sử dụng nhiều hệ điều h&agrave;nh như iOS, macOS, Android, Windows, th&ocirc;ng qua Bluetooth 5.4 hiện đại.</p>\r\n\r\n<p>&bull;&nbsp;<a href=\"https://www.thegioididong.com/tai-nghe-khong-day\" target=\"_blank\">Tai nghe True Wireless</a>&nbsp;trang bị chất &acirc;m sống động, phong ph&uacute;, mang đến cho bạn những gi&acirc;y ph&uacute;t giải tr&iacute; thư gi&atilde;n, đắm ch&igrave;m.</p>\r\n\r\n<p>&bull; Bạn c&oacute; thể thoải m&aacute;i sử dụng tai nghe m&agrave; kh&ocirc;ng phải lo lắng về việc bị gi&aacute;n đoạn do hết pin nhờ thời lượng d&ugrave;ng li&ecirc;n tục l&ecirc;n tới 7 giờ, sạc đầy trong 1.5 giờ bằng c&aacute;ch đặt tai nghe trở lại trong hộp sạc, d&ugrave;ng tai nghe kết hợp c&ugrave;ng hộp sạc cho tổng thời gian l&ecirc;n đến 20 giờ</p>\r\n', 1, 15);
INSERT INTO `tbl_sanpham` VALUES (34, 'Tai nghe Bluetooth True Wireless AVA+ FreeGo A20', '013', '260000', 1, '1712738182_tai-nghe-bluetooth2.jpg', '<p><a href=\"https://www.thegioididong.com/tai-nghe/tai-nghe-bluetooth-true-wireless-ava-freego-a20\" target=\"_blank\">Tai nghe Bluetooth True Wireless AVA+ FreeGo&nbsp;</a>A20</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>với gam m&agrave;u thanh lịch,</h3>\r\n\r\n<h3>kiểu d&aacute;ng đẹp mắt,</h3>\r\n\r\n<h3>&acirc;m thanh sống động v&agrave; r&otilde; r&agrave;ng,</h3>\r\n\r\n<h3>kết nối kh&ocirc;ng d&acirc;y nhanh ch&oacute;ng,</h3>\r\n\r\n<h3>mang đến cho người d&ugrave;ng những trải nghiệm tuyệt vời</h3>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>&bull;&nbsp;Vẻ ngo&agrave;i&nbsp;tai nghe&nbsp;sang trọng, m&agrave;u sắc thời trang, tiện lợi mang theo bất cứ đ&acirc;u m&agrave; kh&ocirc;ng qu&aacute; chiếm chỗ cất giữ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&bull;&nbsp;Tai nghe trang bị chất &acirc;m sống động, mạnh mẽ, mang đến những trải nghiệm nghe nhạc tối ưu.</p>\r\n\r\n<p>&bull;&nbsp;Hỗ trợ kết nối&nbsp;<a href=\"https://www.thegioididong.com/tai-nghe\" target=\"_blank\">tai nghe</a>&nbsp;với thiết bị một c&aacute;ch mượt m&agrave; v&agrave; ổn định th&ocirc;ng qua Bluetooth 5.3.</p>\r\n\r\n<p>&bull;&nbsp;T&iacute;ch hợp t&iacute;nh năng chống nước IPX3, bảo vệ tai nghe an to&agrave;n khi tiếp x&uacute;c với lượng nhỏ mồ h&ocirc;i hoặc nước. Tuy nhi&ecirc;n, khả năng chống nước sẽ giảm theo thời gian, bạn n&ecirc;n hạn chế để tai nghe gặp nước.</p>\r\n\r\n<p>&bull;&nbsp;<a href=\"https://www.thegioididong.com/tai-nghe-ava\" target=\"_blank\">Tai nghe AVA+</a>&nbsp;tương th&iacute;ch với hệ điều h&agrave;nh: iOS, macOS, Android, Windows.</p>\r\n\r\n<p>&bull;&nbsp;Tổng thời gian sử dụng của tai nghe khi kết hợp hộp sạc l&ecirc;n tới 20 giờ.</p>\r\n\r\n<p>&bull;&nbsp;Trang bị mic đ&agrave;m thoại, cho ph&eacute;p bạn nghe gọi với khả năng thu &acirc;m r&otilde; r&agrave;ng v&agrave; chi tiết.</p>\r\n\r\n<p>&gt;</p>\r\n\r\n<p>&gt;</p>\r\n', 1, 15);

-- ----------------------------
-- Table structure for tbl_shipping
-- ----------------------------
DROP TABLE IF EXISTS `tbl_shipping`;
CREATE TABLE `tbl_shipping`  (
  `id_shipping` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_dangky` int NOT NULL,
  PRIMARY KEY (`id_shipping`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_shipping
-- ----------------------------
INSERT INTO `tbl_shipping` VALUES (1, 'Bùi c', '090802740', 'Xã Đông Quang', 'xin thêm 2c', 0);
INSERT INTO `tbl_shipping` VALUES (2, 'Bùi Công Danh', '0989066517', 'Xã Đông Quang', 'xin thêm 2c', 22);

SET FOREIGN_KEY_CHECKS = 1;

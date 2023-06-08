/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_3306
Source Server Version : 50730
Source Host           : localhost:3306
Source Database       : itfxq_menus_app

Target Server Type    : MYSQL
Target Server Version : 50730
File Encoding         : 65001

Date: 2021-10-29 13:12:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_collection`
-- ----------------------------
DROP TABLE IF EXISTS `t_collection`;
CREATE TABLE `t_collection` (
  `id` bigint(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `foodid` bigint(2) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_collection
-- ----------------------------
INSERT INTO `t_collection` VALUES ('1', 'stu1', '24', '2021-10-29 10:04:13');
INSERT INTO `t_collection` VALUES ('3', 'stu1', '18', '2021-10-29 10:53:34');

-- ----------------------------
-- Table structure for `t_foods`
-- ----------------------------
DROP TABLE IF EXISTS `t_foods`;
CREATE TABLE `t_foods` (
  `id` bigint(2) NOT NULL AUTO_INCREMENT,
  `foodName` varchar(255) DEFAULT NULL,
  `taste` varchar(255) DEFAULT NULL,
  `price` decimal(20,2) DEFAULT NULL,
  `count` bigint(2) DEFAULT NULL,
  `foodPic` varchar(255) DEFAULT NULL,
  `foodType` bigint(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `ycl` varchar(255) DEFAULT NULL,
  `zf` longtext,
  `viewnum` bigint(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_foods
-- ----------------------------
INSERT INTO `t_foods` VALUES ('6', '南瓜饼', '甜', null, null, '1c0d8659-72b7-4c65-8f85-e7ccd3671c34.png', '4', '2021-01-19 18:40:56', '南瓜200克，糯米粉1碗约100克左右，糖2汤，油', '<p>1.南瓜去皮切成薄片，放蒸格里蒸软。</p><p>2.把蒸好的南瓜放盆里压成泥状，加入白糖拌匀，糖的分量可根据自己的口味添减。</p><p>3.把糯米粉放进盘里和南瓜泥拌匀，（切记不能加水，南瓜泥已经含有很多水分）然后揉成较干的面团，个人经验，面团太湿太软煎的时候不易成型而且容易粘锅。</p><p>4.把面团分成十分，每分先搓成小圆球，然后轻轻压扁成饼坯。</p><p>5.油烧热后，把饼坯放进锅里用小火慢慢煎至略为鼓起，比原来稍大，要注意翻动， 以免糊掉，把两面煎成金黄色，就可上碟了。</p>', '12');
INSERT INTO `t_foods` VALUES ('7', '双皮奶', '奶香', null, null, '68624362-9037-450c-9896-a9d95e804873.png', '6', '2021-01-19 18:45:04', '牛奶，2勺糖，2个蛋清', '<h2><br></h2><p>1、把牛奶锅中煮开后倒入大碗，这时会看到牛奶表面结起一层皱皱的奶皮。</p><p>2、拿一个空的大碗，放入二只蛋清、二勺糖，搅匀至糖溶解。</p><p>3、待装有牛奶的碗稍凉后，用筷子把奶皮刺破，再将牛奶慢慢倒入装有蛋清的大碗，搅拌均匀。</p><p>4、然后沿碗边缘缓缓倒回留有奶皮的大碗，奶皮会自己浮起来。</p><p>5、最后上锅隔水蒸十分钟即可</p>', '22');
INSERT INTO `t_foods` VALUES ('8', '西瓜沙冰', '甜', null, null, '707f80cf-6184-4a9a-be4f-29f844cce676.png', '5', '2021-01-19 18:45:57', '西瓜，炼乳', '<h2><br></h2><p>1）将西瓜瓤切下来（西瓜皮保留），去掉西瓜籽，将西瓜瓤切成2cm的小块，放入保鲜盒，入冰箱冷冻室，冷冻4个小时以上。</p><p>2）拿出后，放室内静置3分钟，用手将西瓜块尽量分开，放入搅拌机中打碎即成沙冰，根据自己的口味淋上少许炼乳即可。（不放炼乳，其实也很好吃）</p>', '33');
INSERT INTO `t_foods` VALUES ('9', '水果沙拉', '清爽', null, null, '0d58c614-b2ee-4c75-bb82-ce201245b539.png', '5', '2021-01-19 18:46:38', '苹果，水晶梨，柚子，芦柑，香蕉，沙拉酱，炼乳，蕃茄沙司，巧克力', '<h2><br></h2><p>1.苹果 水晶梨削皮挖心切块，柚子 芦柑把皮和籽全部剥去，香蕉切段，放入一个大碗中。</p><p>2.拌入沙拉酱 炼乳，巧克力切碎撒在沙拉上面，在点缀几滴蕃茄沙司。</p>', '66');
INSERT INTO `t_foods` VALUES ('10', '白萝卜鱼头汤', '鲜香', null, null, 'b4a6842b-44c2-4e80-88ad-44d1d9fada04.png', '3', '2021-01-19 18:47:23', '大鱼头半只，白萝1个，绿豆粉丝1把，白胡椒粉，香菜，料酒，猪板油', '<h2><br></h2><h2>做法</h2><p>1、选择大头鱼的鱼头（也就是鳙鱼头，个体比较大，一个鱼头有锅那么大了）</p><p>2、锅烧热了，放入猪板油或者普通的食用油，等油烧热了，要大火，把鱼头放入锅里煎。</p><p>3、把料酒倒在鱼头上，腥气随着酒蒸发掉。</p><p>4、倒入姜片，然后倒入水（水量根据个人喜好，我通常加满水）</p><p>5、加入胡椒粉，加入切成条的白萝卜。</p><p>6、等水烧开了，5-6分钟以后，再盖上锅盖，这样可以散发掉，一些腥气。</p><p>7、大概20分钟左右，白萝卜也透明了，倒入粉丝，煮2分钟关火。</p><p>8、再一次加入胡椒粉，然后加入盐，撒上香菜段即可。</p><h2>小诀窍</h2><p>1、用猪板油煎鱼，可以很好的去腥味。</p><p>2、白萝卜要切粗一些，不要太细，太细了煮熟了没有口感。</p><p>3、如果喜欢清汤，就要小火，一直小火，这样煮出来的汤是透明的。如果喜欢奶白色的就需要中大火，这样才能把蛋白质煮出来。</p><p>4、胡椒粉不用担心上火，它可以引火归元，建议最好有木头的研磨棒，现吃现拧出来，这样比较香，因为买的胡椒粉，有的掺入淀粉或者辣椒，不是很纯正，而且香气也挥发了。</p><p>5、大火煎鱼的目的是鱼皮受热后迅速收缩，不会把皮粘到锅上，但是煎一会就要中火，否则煎糊了。</p>', '0');
INSERT INTO `t_foods` VALUES ('11', '水煮鱼', '麻辣', null, null, 'd7653df5-a2c9-4cb8-8cca-29e8394c2d24.png', '2', '2021-01-19 18:47:49', '淡水鱼1条，酸菜1袋，泡椒6粒，大蒜3瓣，生姜1小块，八角1粒，花椒1小把，干辣椒10条，香菜1根，腌鱼材料：蛋清1粒，淀粉1汤匙，料酒1汤匙，白糖1/2汤匙，盐1/2茶匙，白胡椒粉1/3茶匙', '<h2><br></h2><p>1、将鱼平放在案板上，取一把锋利的快刀平着从鱼尾处片入鱼肉，贴着中间的鱼骨将鱼肉片下来，然后翻面将另一边的鱼肉片下来；将片下来的大片鱼肉平放在案板上，刀与案板呈45度的角度下刀，将鱼肉切成薄片备用。</p><p>2、在切好的鱼肉内调入所以腌鱼材料，用手轻轻抓匀，腌制15分钟。</p><p>3、将酸菜洗净后切成小条、大蒜和生姜切成片，干辣椒切成段。</p><p>4、锅内倒入比炒菜稍多的油烧至7成热，然后放入1半的花椒和干辣椒段呛锅，待香味出来后再放入八角、大蒜、生姜和泡椒和切好的酸菜一起翻炒。</p><p>5、待酸菜的香味炒出来以后，加入约1升的清水然后放入之前剔下的鱼头鱼骨盖上锅盖大火煮开后转文火煮15分钟至汤变浓。</p><p>6、轻轻地倒下鱼片烫熟后即可熄火将煮好的酸菜鱼倒入一个大碗或砂锅内（建议使用砂锅，请注意附后的贴心建议）</p><p>7、将锅清洗干净，然后倒入少许油烧至7成热后放入另一半花椒和干辣椒爆香后倒在煮好的酸菜鱼上，最好放上2根香菜即可。</p><h2>小诀窍</h2><p>1、制作酸菜鱼的鱼最好选用淡水鱼，肉质的口感会更好。</p><p>2、片鱼的时候刀一定要快，事先最好先磨磨刀，事半功倍。</p><p>3、腌制鱼的时候加蛋清会让鱼肉吃起来更嫩滑，但是也有个小缺点就是会使汤汁稍为混浊，如果大家有好的办法，请讲出来和我分享哈；而加一点白糖，我觉得会让肉质吃起来更鲜美。</p><p>4、烫鱼片的时候一定不要烫太久，看到变色了大致就差不多，时间长了肉老了也就不鲜美了。</p><p>5、建议选用砂锅来盛装的好处就是：吃过之后的汤汁和酸菜往往会剩下一些，第二天买块豆腐回来放进去一煮，又是一道很美味的菜哦！</p><p>6、最好热油倒在酸菜鱼上会让菜更香，如果你不喜欢太多油，也可以省略这一步，但我还是很推荐这个步骤哟，很香呢！</p>', '1');
INSERT INTO `t_foods` VALUES ('12', '干锅土豆片', '微辣', null, null, '111d2fc8-cc40-47da-82f2-3ed49c5cfd4c.png', '3', '2021-01-19 18:48:28', '土豆半斤、五花肉2两', '<h2><br></h2><p>1、土豆洗净，切成片状，用清水泡洗几次，泡掉土豆里的淀粉；</p><p>2、猪肉切成薄片，葱切段，姜切片，干红辣椒切碎待用；</p><p>3、炸土豆，把锅预热，加油，油烧热后，把土豆片放入炸，把土豆两面炸成黄色，装盘待用；</p><p>4、前面切好的肉片放入第三步的锅内，翻炒一会，放入干红辣椒、郫县豆瓣酱、葱、姜翻炒，至猪肉变色；</p><p>5、加入前面炸好的土豆片，翻炒，加入酱油，盐，味精，翻炒一会后，喷入一点水；</p><p>6、中火烧开，待汤基本上干了的时候，起锅即可</p>', '0');
INSERT INTO `t_foods` VALUES ('13', '芹菜炒牛肉', '爽嫩', null, null, '64baac5a-f304-4641-b693-c578807f8907.png', '4', '2021-01-19 18:49:33', '黄牛肉、芹菜  青红、尖椒、蒜、姜', '<h2>做法</h2><p>1、把牛肉切片后用肉捶敲松牛肉.这一步是炒出的牛肉更滑嫩.(也可拿刀背敲几下).牛肉的纤维组织较粗，结缔组织又较多，应顺纹切条，横纹切片，将长纤维切断；不能顺着纤维组织切，否则不仅没法入味，还嚼不烂。</p><p>2、先放生抽与苏打粉合匀，再放料酒与生粉。</p><p>3、如果有时间，可在拌肉时加些油，腌1-2小时，这样，油将渗入肉中，当入油锅炒时，肉中的油会因膨胀将肉的粗纤维破坏，这样肉就鲜嫩了；如果没有时间最少需要腌制15分钟。我腌了2小时左右。</p><p>4、芹菜不易入味，所以事先用盐腌制，这样可以减少炒制的时间.芹菜叶中含的维生素比芹菜梗高，所以除了部分老叶，应该尽量保留芹菜叶食用。</p><p>5、锅里放食用油.烧到七成热后放入牛肉。</p><p>6、当看到牛肉全部变色后立刻铲起锅。</p><p>7、锅里留一部分油，炒香配料。</p><p>8、放入青红辣子入锅炒两下(不要太长时间)</p><p>9、放入芹菜。</p><p>10、中火热油，下牛肉片(主料)划散，至变色立即出锅。青椒，炒至九分熟，倒入牛肉片，伴炒入味，数十秒钟即可出锅装盘.出锅前淋入芝麻油。</p><h2>小诀窍</h2><p>1、牛肉选购是第一关键，挑选牛肉大有文章。老牛肉肉色深红、肉质较粗；嫩牛肉肉色浅红，肉质坚而细，富有弹性。</p><p>2、因事先已放食用盐所以在烹饪过程是不需再放食用盐。</p>', '0');
INSERT INTO `t_foods` VALUES ('14', '干锅排骨', '麻辣', null, null, 'af2f219f-2c27-49f0-a3ee-1d7026f55ed3.png', '3', '2021-01-19 18:50:08', '排骨  土豆  西芹  生姜', '<h2><span style=\"font-size: 1.5em;\">做法</span><br></h2><p>1、排骨洗净用盐，料酒，生姜腌至入味（15-20分钟）</p><p>2、土豆去皮切块，放入4成热的油锅中炸8成熟，捞出待用。</p><p>3、腌好的排骨下油锅炸至外酥内熟，捞出待用。</p><p>4、锅底留油，倒入适量的干料炒香。</p><p>5、倒入适量的酱料炒香出红油。</p><p>6、下炸好的排骨和土豆，淋少许料酒，掺适量的清水。</p><p>7、用中火烧至入味，最后加入西芹即可。</p><p>8、我没有干锅，就盛在火锅里 ，食用完后还可以加入鲜汤或水涮烫各种蔬菜。</p><h2>小诀窍</h2><p>结合自家菜的份量，适当的增减调料</p>', '0');
INSERT INTO `t_foods` VALUES ('15', '土豆烧牛肉', '微辣', null, null, '4993dffa-9588-4775-94c1-d9e4e410604e.png', '2', '2021-01-19 18:50:39', '新鲜土豆，牛肉，酱油，盐，生粉，清油，青椒，红椒，鸡精', '<h2><span style=\"font-size: 1.5em;\">做法</span><br></h2><p>1.牛肉切片用盐，酱油，几滴清油，生粉抓匀～（保证牛肉鲜嫩～）</p><p>2.新鲜土豆切厚片，青红辣椒切圈圈～</p><p>3.热锅烧油下牛肉片快速滑过捞出备用～</p><p>4.余油下土豆片撒盐煸炒入味，喷少许水焖一焖～</p><p>5.土豆熟了倒入牛肉，辣椒圈圈，喷酱油翻炒均匀，撒鸡精就ＯＫ了！</p>', '0');
INSERT INTO `t_foods` VALUES ('16', '小米粥', '清汤', null, null, '857f4e0d-d092-4e35-9971-41c0595086ac.png', '1', '2021-01-19 18:52:01', '小米，冷水', '<h2>做法</h2><p>1.米洗净，冷水烧开后放入小米；</p><p>2.煮开后，改小火煮；</p><p>3.待米粒已烂且粥掖粘稠时即可关火盛出。</p><h2>小诀窍</h2><p>1.要在水完全沸腾了之后再放入小米。这样不但粥熟得比较快，而且还不会糊锅底；</p><p>2.想要小米粥更好吃的话，可以加入白米、糯米一起熬煮，这样煮出来的小米粥浓稠香黏，更讲究一点的还可以加麦片以增加粥的口感，只不过因为麦片熟得快，所以得等到米都熟了之后才能加入麦片；</p><p>3.如果喜欢甜食可以放些冰糖；</p><p>4.最好不要使用高压锅制作小米粥，因为小米的颗粒比较碎，容易堵塞住高压锅的阀门，而引发一些安全隐患</p>', '0');
INSERT INTO `t_foods` VALUES ('17', '廋肉粥', '清淡', null, null, '941f0bcd-f587-41f4-a91f-0d03e25eed35.png', '1', '2021-01-19 18:52:34', '东北珍珠米（颗粒比较圆的）小半碗、猪瘦肉末80克、皮蛋一个、姜、葱、香菜各适量', '<p>1、先将米洗一遍，然后浸泡，我让浸泡了4小时；</p><p>2、锅内放水，我放了5碗，冷水放肉末、姜粒，肉末放的时候，要用手捏散；</p><p>3、水开放泡好的米。锅再开后，关中小火，直到米粒软烂；</p><p>4、放入切成粒的皮蛋，放盐调料；</p><p>5、放葱花、香菜关火</p>', '678');
INSERT INTO `t_foods` VALUES ('18', '皮蛋廋肉粥', '清淡', null, null, '0c455b57-1515-4288-b54a-d3618439c65e.png', '1', '2021-01-19 18:53:39', '大米50克  瘦肉80克 皮蛋2个 姜丝2克 油几滴 盐适量  葱花适量 生抽1勺', '<p><br></p><p>1、准备材料</p><p>2、大米洗净，加入水、滴入几滴色拉油，浸泡30分钟。（窍门在这里，用油浸泡过的大米可以快速的煮到软糯，开花。）</p><p>3、瘦肉切丝，用生抽、料酒、淀粉腌制15-20分钟。</p><p>4、皮蛋切小丁。</p><p>5、锅里倒入米和浸泡的水。再加入清水（米1：水10的比例）、姜丝 ，大火煮开后，转中火，不停的搅拌，防止糊锅。15-20分钟就好了。这个时候米粒已经开花，粥已经很糯。如果喜欢更软糯一点的，可以继续煮10分钟。如果觉得太稠的话，可以再加入一点点的开水。</p><p>6、煮到米粒开花，变稠的时候，加入一半份量的皮蛋。转小火煮10分钟 。</p><p>7、再加入瘦肉丝和剩下一半的皮蛋</p><p>8、大火煮约2-3分钟。</p><p>9、调入盐、白胡椒粉、鸡粉搅匀。</p><p>10、撒上葱花即可</p>', '3');
INSERT INTO `t_foods` VALUES ('23', '回锅肉', '肥而不腻', null, null, '9a6350b1-c0a3-448d-9326-a326c95ae7cf.png', '2', '2021-10-27 12:28:27', '五花肉 青蒜 红椒 甜面酱，酱油，料酒，糖，豆瓣酱，豆豉，姜片，葱段', '<p>1、准备食材。</p><p>2、将五花肉洗净，锅中放入适量水和姜片、葱段、八角，水开后放入肉煮至8分熟（约10分钟，用筷子能戳透肉），捞起用冷水稍浸，沥干。</p><p>3、将肉切成约4厘米宽、5厘米长、0.3厘米厚左右的薄片。青蒜红椒切段，葱切段，姜、蒜切片。</p><p>4、炒锅烧热，放少许油，下肉片略炒至肉片微卷曲并出油（这样吃起来不会太油腻）。</p><p>5、锅中留底油，炒香葱姜蒜后，加郫县豆瓣酱一汤匙、甜面酱小半匙、豆豉一汤匙，炒出红油。</p><p>6、再下入五花肉和红椒翻炒均匀。</p><p>7、淋入料酒和少许生抽、糖翻炒。</p><p>8、再加入青蒜段炒至断生即可出锅。</p>', '1006');
INSERT INTO `t_foods` VALUES ('24', '水煮鱼', '麻辣', null, null, '25a1d653-e4b1-4b1c-9a69-91082c2e1229.png', '2', '2021-10-27 12:32:07', '草鱼1000g，黄豆芽500g，蛋清2', '<p><span style=\"font-size: 1em;\">1、草鱼一条，去鳞去内脏清洗干净备用。</span><br></p><p>2、去头取尾和中间的鳍。</p><p>3、将鱼直立起来，用刀在背部划开，方便取鱼肉。</p><p>4、将鱼肉和鱼骨分离。</p><p>5、用刀逐片将鱼肉片成薄薄的鱼片。</p><p>6、鱼骨斩块备用。</p><p>7、鱼头对开备用。</p><p>8、准备大蒜、麻椒、花椒、大茴和各类干红辣椒。</p><p>9、葱打结备用。</p><p>10、黄豆芽洗净备用。</p><p>11、鱼片加入少许料酒、食盐、一个蛋清和少许淀粉，拌匀腌制起来备用。</p><p>12、鱼骨和鱼头也加入料酒、蛋清一个和淀粉拌匀备用。</p><p>13、炒锅放油，将黄豆芽炒至断生，加入少许盐。</p><p>14、将炒好的黄豆芽放入容器内备用。</p><p>15、炒锅放油，加入大茴、花椒和麻椒炸香。</p><p>16、将炸好的花椒和麻椒捞出一大半备用。</p><p>17、放入干红辣椒炸香。</p><p>18、放入豆瓣酱，炒出红油。</p><p>19、加入肉汤或者清水，同时放入打好的葱结。</p><p>20、放入鱼头和鱼骨烧开。</p><p>21、这个时间，将是蒜剁碎备用，将刚刚炸香的花椒擀碎。</p><p>22、水开后，用筷子逐片将鱼片下锅。</p><p>23、将煮好的鱼片倒入装黄豆芽的容器中，上面撒上蒜蓉和花椒碎。</p><p>24、另取一锅，加入食用油，放入干红辣椒，将辣椒炸出香味后关火。</p><p>25、将烧好的热油和辣椒倒入蒜碎和花椒碎上，即可食用</p>', '1032');

-- ----------------------------
-- Table structure for `t_menu`
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `id` bigint(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `pid` bigint(2) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('1', '系统管理', null, null, 'mdi mdi-file-outline');
INSERT INTO `t_menu` VALUES ('2', '用户维护', '/user/index', '1', null);
INSERT INTO `t_menu` VALUES ('3', '角色维护', '/role/index', '1', null);
INSERT INTO `t_menu` VALUES ('4', '权限维护', '/permission/index', '1', null);
INSERT INTO `t_menu` VALUES ('5', '菜单维护', '/menu/index', '1', null);
INSERT INTO `t_menu` VALUES ('22', '菜品管理', null, null, 'mdi mdi-file-outline');
INSERT INTO `t_menu` VALUES ('23', '菜品列表', '/food/index', '22', null);
INSERT INTO `t_menu` VALUES ('24', '订单管理', null, null, 'mdi mdi-file-outline');
INSERT INTO `t_menu` VALUES ('25', '订单列表', '/order/index', '24', null);

-- ----------------------------
-- Table structure for `t_permission`
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `id` bigint(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `pid` bigint(2) DEFAULT NULL,
  `menuid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('1', 'user', '用户模块', '0', '2');
INSERT INTO `t_permission` VALUES ('7', 'role', '角色模块', '0', '3');
INSERT INTO `t_permission` VALUES ('8', 'role:add', '新增角色', '7', null);
INSERT INTO `t_permission` VALUES ('9', 'role:delete', '删除角色', '7', null);
INSERT INTO `t_permission` VALUES ('10', 'role:get', '查询角色', '7', null);
INSERT INTO `t_permission` VALUES ('11', 'role:update', '修改角色', '7', null);
INSERT INTO `t_permission` VALUES ('13', 'menu', '菜单管理', '0', '5');
INSERT INTO `t_permission` VALUES ('14', 'menu:add', '新增菜单', '13', null);
INSERT INTO `t_permission` VALUES ('15', 'user:add', '用户新增', '1', null);
INSERT INTO `t_permission` VALUES ('16', 'user:delete', '用户删除', '1', null);
INSERT INTO `t_permission` VALUES ('17', 'user:get', '用户查询', '1', null);
INSERT INTO `t_permission` VALUES ('18', 'user:update', '用户更新', '1', null);
INSERT INTO `t_permission` VALUES ('19', 'menu:delete', '菜单删除', '13', null);
INSERT INTO `t_permission` VALUES ('20', 'menu:query', '菜单查询', '13', null);
INSERT INTO `t_permission` VALUES ('21', 'menu:get', '菜单获取', '13', null);
INSERT INTO `t_permission` VALUES ('22', 'permission', '权限列表', '0', '4');
INSERT INTO `t_permission` VALUES ('23', 'food', '菜品列表', '0', '23');
INSERT INTO `t_permission` VALUES ('24', 'order', '订单列表', '0', '25');

-- ----------------------------
-- Table structure for `t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` bigint(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sn` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '管理员', null, null);

-- ----------------------------
-- Table structure for `t_role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `t_role_permission`;
CREATE TABLE `t_role_permission` (
  `id` bigint(2) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(2) DEFAULT NULL,
  `permissionid` bigint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_permission
-- ----------------------------
INSERT INTO `t_role_permission` VALUES ('263', '1', '1');
INSERT INTO `t_role_permission` VALUES ('264', '1', '7');
INSERT INTO `t_role_permission` VALUES ('265', '1', '8');
INSERT INTO `t_role_permission` VALUES ('266', '1', '9');
INSERT INTO `t_role_permission` VALUES ('267', '1', '10');
INSERT INTO `t_role_permission` VALUES ('268', '1', '11');
INSERT INTO `t_role_permission` VALUES ('269', '1', '13');
INSERT INTO `t_role_permission` VALUES ('270', '1', '14');
INSERT INTO `t_role_permission` VALUES ('271', '1', '15');
INSERT INTO `t_role_permission` VALUES ('272', '1', '16');
INSERT INTO `t_role_permission` VALUES ('273', '1', '17');
INSERT INTO `t_role_permission` VALUES ('274', '1', '18');
INSERT INTO `t_role_permission` VALUES ('275', '1', '19');
INSERT INTO `t_role_permission` VALUES ('276', '1', '20');
INSERT INTO `t_role_permission` VALUES ('277', '1', '21');
INSERT INTO `t_role_permission` VALUES ('278', '1', '22');
INSERT INTO `t_role_permission` VALUES ('279', '1', '23');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  `sex` bit(1) DEFAULT NULL,
  `headImg` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', '$2a$10$Z9Ofwm9TSKzIKQpQwXhdY.LaoeoykGFu/Si/0sBm/Z2E1vWl5lRA2', 'admin@qq.com', '18000010002', '', '517c65ab-2ef4-4d11-b637-dfada5552b01.png', '2020-05-15 13:49:07');
INSERT INTO `t_user` VALUES ('2', 'admin2', '$2a$10$YITYi7HjqT2gh8jEF6eyquR/Og0qmYBNT8cQLaEjjS92jcZHwsI9G', 'test112244@qq.com', '18000020003', '', 'f879da1c-b376-40a2-a5a0-68b656fad44a.jpg', '2020-05-13 13:49:11');
INSERT INTO `t_user` VALUES ('17', 't1', '$2a$10$t7K//qDwIbaPGt6fiRVL.eXeFHBHtF4aON2VGwd3u.pOwvH8AzTBe', 't1@qq.com', '18800030005', '', '229caa82-17c6-4515-9bd6-edbf10212099.png', '2020-06-02 15:04:05');
INSERT INTO `t_user` VALUES ('18', 't2', '$2a$10$yPSGzDtZevO/O9LwJVFteOJJywpJXIMW2FZJdMHAQukTxul3WCVWG', 't2@qq.com', '18800040006', '', '229caa82-17c6-4515-9bd6-edbf10212099.png', '2020-06-02 15:06:08');
INSERT INTO `t_user` VALUES ('19', 't611', '$2a$10$uMG5QlQE3n67AFQDmpPZJ.ucP6cgIGFLHnBnWMyoCcVevcTZ8q/Yu', 't611@qq.com', '18100010002', '', '9a251802-69ab-431c-935b-fe56c4381fb8.jpg', '2020-06-12 22:49:42');
INSERT INTO `t_user` VALUES ('20', 't6', '$2a$10$.DBmvE23vYeY16qR/kRPZeZU3wulG2EQPn/r8xEKNKl0/YOmF68Xi', 't6@qq.com', '18100010002', '', '6425bc92-952a-428f-81c1-0a6bb697d661.jpg', '2020-06-12 22:53:31');
INSERT INTO `t_user` VALUES ('21', 't7', '$2a$10$3pQ85MLW37W3EvhiyzqkVuSVlATF6DXgK7ns/FDzUhsP6far8WBhm', 't7@qq.com', '18800010002', '', 'd93bae7e-70b3-4bf2-8b67-ce6925e95852.jpg', '2020-06-12 23:09:58');
INSERT INTO `t_user` VALUES ('22', 't8', '$2a$10$btpAN5Xf7VVxI34qFDftl.M8E.3LKPLa2ojl2wc21Xl7irGq.tPgm', 't8@qq.com', '18800010002', '', '571e132b-0b8b-4cf8-ba66-3725c980c59a.jpg', '2020-06-12 23:39:27');
INSERT INTO `t_user` VALUES ('24', 'stu1', '$2a$10$HXjVMCWmEck18JvqOT6IeuZwDo/XfVfgTif27DH/1CLpdUTHBrbwS', 'stu1@qq.com', '19900010003', '', '3996788d-f637-4f27-87f4-7afd27cd7151.png', '2020-06-30 18:06:49');
INSERT INTO `t_user` VALUES ('26', 'stu2', '$2a$10$RjOTW0w0mQIXtXQFxzDPbO3HguIF4L.7qNbdyyYzKFtI4Ksdc34sW', 'stu3@qq.com', '18800010002', '', '4ab95f48-14d4-4d04-add0-ec85d387f4d3.jpg', '2020-07-01 09:31:51');
INSERT INTO `t_user` VALUES ('27', 'stu4', '$2a$10$bhmglaF.WL39kygFBLgtYONWSO1Rcw5/WtJeIULAEEC1qdAljPn1O', 'stu4', '18800010004', '', '782c2047-1777-4721-ba42-b9e92b02c89d.png', '2020-07-01 09:33:33');
INSERT INTO `t_user` VALUES ('28', 'stu5', '$2a$10$UxMQz2FoiajddBRuvkasjeKF8on/aPpKQ9Umcf9ARXEJ0IsTjOEOe', 'stu5@qq.com', '19900010002', '', '518114fd-e68c-464f-bf5a-568b9f0917d3.png', '2020-09-04 08:54:11');
INSERT INTO `t_user` VALUES ('29', 'stu6', '$2a$10$gOxXu.HPrChFiXXy99YtJukEksEuECvgE1w1t8AcLJauyDWQRKkW.', 'stu6@qq.com', '19900010003', '', '958dfbf9-c58b-4c81-8806-78a4ebf61bd7.png', '2020-09-04 14:34:03');
INSERT INTO `t_user` VALUES ('30', 'stu8', '$2a$10$j1qbPkjsEu/qcodsMAxLYOHsvJNFS8CfUmf9hhjSBMo/qMxTJBhee', 'stu8@qq.com', '18800020003', '', '6cbe28b1-3788-41d5-9286-eec8d1768c9c.jpg', '2020-09-04 15:11:19');
INSERT INTO `t_user` VALUES ('34', 'ww', '$2a$10$27ekfqRjEbiXiUEl3ELkCeBU5ZUfimOVRmkCikwtwpjC0sxgi0Nka', 'ww@qq.com', '18890019012', '', null, '2021-01-21 22:31:43');
INSERT INTO `t_user` VALUES ('37', 'lisi', '$2a$10$Qhhr2qauEYj9gALDqATFWeJGl7rbVnguwXlsuXriWlYt5zLRtqH5m', 'ls@qq.com', '18899019902', '', 'e13eefe2-8044-4182-9e4c-d723478adf87.png', '2021-01-21 23:04:16');

-- ----------------------------
-- Table structure for `t_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `id` bigint(2) NOT NULL AUTO_INCREMENT,
  `userid` bigint(2) DEFAULT NULL,
  `roleid` bigint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('1', '1', '1');
INSERT INTO `t_user_role` VALUES ('2', '1', '2');
INSERT INTO `t_user_role` VALUES ('3', '17', '2');
INSERT INTO `t_user_role` VALUES ('14', '18', '2');
INSERT INTO `t_user_role` VALUES ('15', '19', '2');
INSERT INTO `t_user_role` VALUES ('16', '20', '2');
INSERT INTO `t_user_role` VALUES ('17', '21', '2');
INSERT INTO `t_user_role` VALUES ('18', '22', '2');
INSERT INTO `t_user_role` VALUES ('19', '24', '3');
INSERT INTO `t_user_role` VALUES ('20', '27', '3');
INSERT INTO `t_user_role` VALUES ('21', '26', '3');
INSERT INTO `t_user_role` VALUES ('22', '28', '3');
INSERT INTO `t_user_role` VALUES ('23', '29', '3');
INSERT INTO `t_user_role` VALUES ('24', '30', '3');
INSERT INTO `t_user_role` VALUES ('25', '31', '3');
INSERT INTO `t_user_role` VALUES ('26', '32', '3');
INSERT INTO `t_user_role` VALUES ('27', '33', '3');

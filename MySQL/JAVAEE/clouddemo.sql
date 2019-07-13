/*
 Navicat Premium Data Transfer

 Source Server         : Windows@MySQL_Connection
 Source Server Type    : MySQL
 Source Server Version : 50560
 Source Host           : 127.0.0.1:3306
 Source Schema         : clouddemo

 Target Server Type    : MySQL
 Target Server Version : 50560
 File Encoding         : 65001

 Date: 21/06/2019 00:43:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cd_answer
-- ----------------------------
DROP TABLE IF EXISTS `cd_answer`;
CREATE TABLE `cd_answer`  (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` datetime NULL DEFAULT NULL,
  `hotstar` int(11) NULL DEFAULT NULL,
  `question_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`answer_id`) USING BTREE,
  INDEX `回答所属问题id`(`question_id`) USING BTREE,
  INDEX `回答所属用户id`(`user_id`) USING BTREE,
  CONSTRAINT `回答所属用户id` FOREIGN KEY (`user_id`) REFERENCES `cd_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `回答所属问题id` FOREIGN KEY (`question_id`) REFERENCES `cd_question` (`question_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cd_answer
-- ----------------------------
INSERT INTO `cd_answer` VALUES (2, '2 把PPT每一页都保存为图片\r\n这个操作最笨的办法可能就是一页一页截屏了，但是假如你的PPT很多，这样操作起来是非常麻烦的，且看快捷操作方式。\r\n\r\n操作步骤：通过“文件”>“另存为”操作，在保存类型中选择图片格式即可。\r\n\r\n\r\n\r\n在文件另存为时选择图片保存类型', '2019-06-07 20:31:28', 66, '1141317528597958661', '1141141210015076357');
INSERT INTO `cd_answer` VALUES (3, '3 一键禁止动画效果\r\n动画效果几乎是所有PPT必备的，但是有时候突发情况出现，没有足够的时间展示动画效果或者不得已要取消动画，那么一页一页操作删除动画也是很复杂的，正确的操作应该是：\r\n\r\n“幻灯片放映”>“设置幻灯片放映”，在打开设置中选中“放映时不加动画”即可。', '2019-06-20 20:32:04', 36, '1141317528597958661', '1141148861939716023');
INSERT INTO `cd_answer` VALUES (4, '制作PPT，有很多方法值得大家学习的，为了让自己的PPT看起来能够完美，相信各位朋友也都是很乐意去学习的，今天交给大家一个神奇的PPT技巧，那就是制作动态卷轴，不知道都多少朋友会制作了？\r\n\r\n不要小看PPT，能够制作出动态卷轴，看起来也是很高大上的哦，方法很简单，话不多说，直接上图啦。\r\n\r\n第一步：点击【开始】-【新建幻灯片】-选择【空白页】-【设计】-【设置背景格式】-【填充】-【图片或纹理填充】-【纹理】-【再生纸】，这样卷轴的背景色就出来了。\r\n\r\n\r\n\r\n第二步：点击【插入】-【图片】-【选择背景图】，然后调整图片的大小，再选择【蜻蜓背景图】，移动到合适位置时，点击【格式】-【删除背景】。\r\n\r\n\r\n\r\n第三步：点击【动画】-【添加动画】-【自定义路径】，然后在点击【插入】-【图片】-【删除背景】，调整方向大小并添加自定义路径。\r\n\r\n\r\n\r\n第四步：双击自定义路径，选择【计时】-【期间】-【确定】。\r\n\r\n\r\n\r\n第五步：点击【插入】-【形状】-【圆柱形】-【图片】-【将图片至于底层】-【格式】-【合并形状】-【相交形状】，再插入【三角形，矩形】，并将其组合起来，点击【形状轮廓】-【无轮廓】-【填充】。\r\n\r\n\r\n\r\n第六步：当我们将两边都制作完成后，都移至背景的中心位置，然后插入【矩形】并填充，再将图片和卷轴组合，两边都是一样的操作。\r\n\r\n\r\n\r\n第七步：点击【动画】-【添加动画】-【动画路径】-【直径】-【效果选项】-【靠左】，右边就选择【右】即可。\r\n\r\n\r\n\r\n第八步：将靠左和靠右动画窗格移到最开头的位置，蜻蜓动画设置成从当上一页开始，第二只则从上一项开始之后开始。\r\n\r\n\r\n\r\n第九步：新建一个幻灯片，将左右卷轴复制到新建幻灯片中，在原本的背景中添加文字。然后对文字添加动画，再点击动画选项中的【擦除】-【计时】。\r\n\r\n\r\n\r\n第十步：这是文字从上一页开始，然后就可以点击【幻灯片放映】了，这样一份完整的幻灯片放映就做出来了。', '2019-06-22 20:32:52', 81, '1141317528597958661', '1141148861939716096');
INSERT INTO `cd_answer` VALUES (5, '1、文字分离效果\r\n\r\n文字分离效果是海报设计中常见的技巧，我们经常在大街上或者网上宣传中经常看到。如今在PPT制作中，我们也能经常看到类似的PPT模版了。具体操作方法：将需拆分的文字拆成单子，或是将单个字拆分成不同笔画→然后设置这些字的填充颜色的透明度。具体操作方法：选中文本框→右键→【设置形状格式】→在文本效果选项下选择【透视】→在透视中选择【宽松】→设置好【透视角度大小和Y坐标轴的大小】', '2019-06-22 20:33:48', 21, '1141317528597958661', '1141141276717092880');
INSERT INTO `cd_answer` VALUES (6, '第一、当时接受采访的时候，只是说Java是世界上最好的语言之一。第二、Java在这些年的生态系的强大是有目共睹的，无论是Dubbo，RocketMQ，还是P3C，还是JVM之上的其它语言生态，请关注，你所谓的喜欢的语言，与JVM本身是有着直接的关系，也是有CAFE BABE用来标识的中间态文件。第三、JDK11即将与《码出高效——阿里巴巴JAVA开发手册详解》同期发布，试问哪门语言在开源社区这么多来一直保持着对语言本身不断地精进。也在不断地吸收其它语言的优点：函数式、var、模块化等。Java还在潮头，用来作为入门语言依然是最好的选择之一。第四、JIT技术越来越强大，在服务端的角度，并不会比C++慢多少了。无论是双十一，还是春节红包，跑着都是Java的应用；Java的多线程机制越来越成熟，随着多核技术的发展，MapReduce的一些理念在Java机制上正在广泛地得到应用。\n\n作者：孤尽\n链接：https://www.zhihu.com/question/288738485/answer/467125069\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', '2019-06-30 20:37:06', 211, '1141326426180554752', '1141141276717092880');
INSERT INTO `cd_answer` VALUES (7, '都说了是他觉得，连个觉得都不行了？现在连个人觉得某个编程语言是最好都要被在知乎上批斗了？对了问题描述还有一句【井底之蛙】，那我对题主的评价就是【芳草地，连天】，文革都结束40多年了，你还没从那种文字狱的快感里醒过来么，一句话就想给人带帽子，开批斗大会，真是够了\n\n', '2019-06-20 20:42:24', 62, '1141317528602152962', '1141324648353501184');
INSERT INTO `cd_answer` VALUES (8, '怎么看待？恕我意识流泛滥：1）JAVA是世界上流行榜排名第一的语言没有之一，详见各流行榜榜单2）“好”的“计量标准”是什么？是“优雅？体验一致？美观？大方得体？”这个词语是“心理上的描述”而不具有科学上的明确。因此我能说JAVA是世界上最好的语言，你能说PHP是世界上最好的语言，他能说C++是世界上最好的语言。这个是心理感受，绝非科学计量。3）既然是心理上的感受，我说JAVA是最好的，你却说：“不，PHP才是最好的语言”，我们把这句话扩展一下：“不，PHP才是（我以及你、以及其他所有人）的最（心理上感受）好的语言”。请问我们的心脏你做主么？给钱了么？补偿了我们的改变内心操守的损失了么？4）JAVA就是世界上最好的语言。5）语言优劣之说，是三岁小孩玩的东西。题主你还小，我们这把年纪的人，考虑的都是团队、资本、产出与收益，谁会为了个A比B好的无意义争论争吵？PS：题主如果能掏得起钱，我可以将回复4修改为你指定的任何语言。', '2019-06-08 20:44:55', 623, '1141317528602152962', '1141317528606347267');
INSERT INTO `cd_answer` VALUES (9, '孤尽 说的对.\r\n\r\n因为java写出了 淘宝 京东 .各种电商.上亿的并发.\r\n\r\npython就写了个知乎,还TMD老挂.', '2019-06-23 20:45:36', 41, '1141317528602152962', '1141324648353501184');
INSERT INTO `cd_answer` VALUES (10, '其他问题没什么，400以内的键盘，rgb和樱桃轴不能共存。但是有一款60配列的rk61，319块，应该是最便宜的原厂rgb键盘了。但是一般用户不建议买61配列的，独立方向键都没有，用起来真的超级不方便。那么根据你的要求尽量推荐几款合适的吧1、最便宜的常规配列（87、104、108）樱桃轴键盘。应该是rk987。\n\n作者：乙一\n链接：https://www.zhihu.com/question/314850411/answer/616953862\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', '2019-06-20 21:02:04', 190, '1141326426180554752', '1141141210015076357');
INSERT INTO `cd_answer` VALUES (11, '\n\n换一个角度来说这个问题吧！有多少人买过X86体系之外的CPU，而且知道自己买了？苹果粉是一批，早年的苹果都是PPC，后来才换成X86的；手机技术党是一批，目前智能机已经是ARM的天下了；再次点，买过家用路由器的也有几个知道，里面有个CPU，不是X86的。事实上，CPU领域，民用市场，没有人可以比得过X86，而X86中有无人可敌Intel，赢者通吃！ARM优化低功耗方向，自己造不了CPU就卖IPcore，让别人造去。由于智能机市场兴起，有能力造好ARM的也就是那些大牌手机商。其他现存的CPU，出货量比较大的就是MIPS了，和ARM一样，自己不产chip。还有不少小众的，比如PPC，Sparc，都是有特殊的应用的。其他嵌入式应用中，CPU并不需要太好，只要够用，便宜。这里有国产CPU的市场，但是，便宜的chip有多大利润，可以支持继续研发，甚至进军其他领域呢？龙芯的问题也就在这里了，做通用CPU进军桌面、服务器市场，比不上Intel，单性能就有几年的差距，技术积累更是差远了。更有X86这座大山，全世界都拿他没办法。做嵌入式则性能过高、功耗太大、单片太贵。找不到市场定位，龙芯的意义就仅仅是科研，仅仅是人才培养，仅仅让国人不会落后世界先进水平太多，技术上再努力也不会有未来。', '2019-06-21 21:07:28', 63, '1141326426180554755', '1141326426172166152');
INSERT INTO `cd_answer` VALUES (12, '《麦田里的守望者》\r\n我在很长的一段时间里，一直觉得这本书是为我写的。\r\n后来我长大了，知道塞林格写这书的时候我还没出生，知道无数叛逆青年都把它奉为圣经，知道世上不是只有我一个人这样，知道列侬因它而死……我还是觉得，这书里写的就是我的故事。', '2019-06-30 21:09:06', 93, '1141326426180554758', '1141326426172166150');
INSERT INTO `cd_answer` VALUES (13, '\n\n第一次写。1无问西东   这部电影，用一个非常巧妙的时间线（人物年代）人物关系之间都有一定的联系，开播的时候很多人都说看不懂，其实很简单，作为青年人能感受到其中的热血沸腾。如果在迷途中，能看到感知其中的方向，就很好了。我看到电影中每一代的年轻人，他们都有着同样的初心，都为之奋斗。看过就知道什么是震撼。2这个杀手不太冷 很多人都推荐，都有其中的意味。自己品味吧。（已忘了剧情）只记得很暖心。3我不是药神 这个是真实案例改编的。看的时候突然发现，我国对于这些抗癌药物什么的监管很严，但是病太多药物太贵，反映出买不起这个事实。上映之后，那些药物也开始慢慢纳入医保什么的，很实在。其中的剧情，感人真实。4 二十二 这个电影算是纪录片吧，讲述慰安妇的，很沉重。但是历史啊，永远会被记录下来的，罪行也无法被抹去。向她们致敬5 流浪地球 作为春节档期的流浪地球，很火。其中的特效也非常棒！6绿皮书 应该是讲种族歧视的。也是很少人能够看懂的一部电影。意味很大。7影 这部我还真的没有看懂说了什么。8芳华 很值得一看。（已忘剧情）9血战钢锯岭 真实事件改编的。一个医疗兵一夜之间救了很多人。（虽然我说的很简单但是非常值得看。记得的就这些。还有好多好多。有含义的电影都能让人受益匪浅。', '2019-05-01 21:10:10', 999, '1141326426180554760', '1141326426172166144');
INSERT INTO `cd_answer` VALUES (14, '大概是因为懒。学习的苦需要主动去吃，生活的苦...你躺着不动它就来了...', '2019-07-26 09:11:37', 763, '1141326426180554759', '1141317528606347266');
INSERT INTO `cd_answer` VALUES (15, '既然题主是个新手，那我先说点机械键盘的基础知识，方便题主自己筛选适合自己的机械键盘首先先简单介绍一下，机械键盘到底是个啥其实早期的键盘都是机械键盘，上个世纪八十年代个人电脑开始流行的时候，键盘全是机械键盘。但是自从薄膜键盘出现后，机械键盘就很少见了。因为薄膜键盘的成本实在是低，那个年代大部分人对键盘的要求还是便宜就好。薄膜键盘埋在键盘下方的是一整片塑料薄膜。虽然成本较低但寿命和手感都不佳。而机械键盘则是每个键盘下方都有个独立的机械轴体。相比于薄膜键盘反馈更强，同时不同的机械键盘轴体的不同特性还会有不同的手感。另外，机械键盘可以通过更换键帽的形式来自己diy，有的机械键盘甚至是可插拔轴体，连手感都可以更换。你可以很轻松diy出一个只属于你自己的，全世界独一无二的键盘出来\n\n。', '2019-06-06 21:12:49', 221, '1141326426180554752', '1141324648353501184');

-- ----------------------------
-- Table structure for cd_answer_comment
-- ----------------------------
DROP TABLE IF EXISTS `cd_answer_comment`;
CREATE TABLE `cd_answer_comment`  (
  `answercommnet_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `timestamp` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answer_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`answercommnet_id`) USING BTREE,
  INDEX `评论所属的回答id`(`answer_id`) USING BTREE,
  INDEX `评论所属的用户id`(`user_id`) USING BTREE,
  CONSTRAINT `评论所属的用户id` FOREIGN KEY (`user_id`) REFERENCES `cd_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `评论所属的回答id` FOREIGN KEY (`answer_id`) REFERENCES `cd_answer` (`answer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cd_answer_comment_reply
-- ----------------------------
DROP TABLE IF EXISTS `cd_answer_comment_reply`;
CREATE TABLE `cd_answer_comment_reply`  (
  `answercommentreply_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `timestamp` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `anwercomment_id` int(11) NULL DEFAULT NULL,
  `user_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`answercommentreply_id`) USING BTREE,
  INDEX `所属的回答评论`(`anwercomment_id`) USING BTREE,
  INDEX `所属的用户`(`user_id`) USING BTREE,
  CONSTRAINT `所属的用户` FOREIGN KEY (`user_id`) REFERENCES `cd_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `所属的回答评论` FOREIGN KEY (`anwercomment_id`) REFERENCES `cd_answer_comment` (`answercommnet_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cd_article
-- ----------------------------
DROP TABLE IF EXISTS `cd_article`;
CREATE TABLE `cd_article`  (
  `article_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `intro` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` datetime NULL DEFAULT NULL,
  `updatetime` datetime NULL DEFAULT NULL,
  `tag` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`article_id`) USING BTREE,
  INDEX `文章的作者`(`user_id`) USING BTREE,
  CONSTRAINT `文章的作者` FOREIGN KEY (`user_id`) REFERENCES `cd_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cd_article
-- ----------------------------
INSERT INTO `cd_article` VALUES (' 1141317528597958657', 'spring基本概念', '也就是我们经常说的spring框架，包括了ioc依赖注入，Context上下文、bean管理、springmvc等众多功能模块，其它spring项目比如spring boot也会依赖spring框架。', '\n\n1.IOCIOC，就是控制反转，如最左边，拿公司招聘岗位来举例：假设一个公司有产品、研发、测试等岗位。如果是公司根据岗位要求，逐个安排人选，如图中向下的箭头，这是正向流程。如果反过来，不用公司来安排候选人，而是由第三方猎头来匹配岗位和候选人，然后进行推荐，如图中向上的箭头，这就是控制反转。在spring中，对象的属性是由对象自己创建的，就是正向流程；如果属性不是对象创建，而是由spring来自动进行装配，就是控制反转。这里的DI也就是依赖注入，就是实现控制反转的方式。正向流程导致了对象于对象之间的高耦合，IOC可以解决对象耦合的问题，有利于功能的复用，能够使程序的结构变得非常灵活。2.context上下文和beanspring进行IOC实现时使用的有两个概念：context上下文和bean。如中间图所示，所有被spring管理的、由spring创建的、用于依赖注入的对象，就叫做一个bean。Spring创建并完成依赖注入后，所有bean统一放在一个叫做context的上下文中进行管理。3.AOPAOP就是面向切面编程。如右面的图，一般程序执行流程是从controller层调用service层、然后service层调用DAO层访问数据，最后在逐层返回结果。这个是图中向下箭头所示的按程序执行顺序的纵向处理。但是，一个系统中会有多个不同的服务，例如用户服务、商品信息服务等等，每个服务的controller层都需要验证参数，都需要处理异常，如果按照图中红色的部分，对不同服务的纵向处理流程进行横切，在每个切面上完成通用的功能，例如身份认证、验证参数、处理异常等等、这样就不用在每个服务中都写相同的逻辑了，这就是AOP思想解决的问题。AOP以功能进行划分，对服务顺序执行流程中的不同位置进行横切，完成各服务共同需要实现的功能。', '2019-06-20 20:15:13', '2019-06-20 20:15:17', 'Spring基础', '1140836848315273216');
INSERT INTO `cd_article` VALUES ('1141317528597958656', '你对Spring的理解？', 'Spring 全家桶，它包括SpringMVC、SpringBoot、Spring Cloud、Spring Cloud Dataflow等解决方案。', '\n\n1.spring framework也就是我们经常说的spring框架，包括了ioc依赖注入，Context上下文、bean管理、springmvc等众多功能模块，其它spring项目比如spring boot也会依赖spring框架。2.spring boot它的目标是简化Spring应用和服务的创建、开发与部署，简化了配置文件，使用嵌入式web服务器，含有诸多开箱即用的微服务功能，可以和spring cloud联合部署。Spring Boot的核心思想是约定大于配置，应用只需要很少的配置即可，简化了应用开发模式。3.Spring Data是一个数据访问及操作的工具集，封装了多种数据源的操作能力，包括：jdbc、Redis、MongoDB等。4.Spring Cloud是一套完整的微服务解决方案，是一系列不同功能的微服务框架的集合。Spring Cloud基于Spring Boot，简化了分布式系统的开发，集成了服务发现、配置管理、消息总线、负载均衡、断路器、数据监控等各种服务治理能力。比如sleuth提供了全链路追踪能力，Netflix套件提供了hystrix熔断器、zuul网关等众多的治理组件。config组件提供了动态配置能力，bus组件支持使用RabbitMQ、kafka、Activemq等消息队列，实现分布式服务之间的事件通信。▌5. Spring Security主要用于快速构建安全的应用程序和服务，在Spring Boot和Spring Security OAuth2的基础上，可以快速实现常见安全模型，如单点登录，令牌中继和令牌交换。你可以了解一下oauth2授权机制和jwt认证方式。oauth2是一种授权机制，规定了完备的授权、认证流程。JWT全称是JSON Web Token，是一种把认证信息包含在token中的认证实现，oauth2授权机制中就可以应用jwt来作为认证的具体实现方法。二、Struts的具体作用struts是曾经非常火爆的web组合ssh中的控制层。我们知道web服务一般都采用MVC分层模型构建，就是model层负责内部数据模型，controller负责请求的分发控制，view层负责返回给用户展示的视图。struts实现的就是其中控制层的角色。Struts采用Filter实现，针对类进行拦截，每次请求就会创建一个Action。使用struts的SSH组合已经逐渐被使用springMVC的SSM组合代替，也就是Spring-MVC+Spring+MyBatis的组合，一方面原因是由于struts对几次安全漏洞的处理，让大家对struts的信心受到影响；另一方面，springmvc更加的灵活，不需要额外配置，不存在和spring整合等问题，使用更加方便，所以建议以SSM框架的学习为主。三、ORM框架ORM就是对象关系匹配，是为了解决面向对象与关系数据库存在的互不匹配的问题。简单来说，就是把关系数据库中的数据转换成面向对象程序中的对象。常用的ORM框架有Hibernate和MyBatis，也就是ssh组合和ssm组合中的h与m。它们的特点和区别如下：Hibernate对数据库结构提供了完整的封装，实现了POJO对象与数据库表之间的映射，能够自动生成并执行SQL语句。只要定义了POJO 到数据库表的映射关系，就可以通过Hibernate提供的方法完成数据库操作。Hibernate符合JPA规范，就是Java持久层API。mybatis通过映射配置文件，将SQL所需的参数和返回的结果字段映射到指定对象，mybatis不会自动生成sql，需要自己定义sql语句，不过更方便对sql语句进行优化。总结起来：1.hibernate配置要比mybatis复杂的多，学习成本也比mybatis高。mybatis，简单、高效、灵活，但是需要自己维护sql；2.hibernate功能强大、全自动、适配不同数据库，但是非常复杂，灵活性稍差。四、Netty简介Netty是一个高性能的异步事件驱动的网络通信框架，Netty对JDK原生NIO进行封装，简化了网络服务的开发。下文会详细讲解另外，同类型的框架还有mina、grizzly，不过目前使用的相对较少，一般不会在面试中出现，可以作为兴趣简单了解。五、RPC服务Motan、Dubbo、gRPC都是比较常用的高性能rpc框架，可以提供完善的服务治理能力，java版本的通信层都是基于前面提到的Netty实现。它们的特点稍后介绍。六、其他常用框架jersy和restEasy都是可以快速开发restful服务的框架。和springmvc相比，这两个框架都是基于jax-rs标准，而springmvcs基于servlet，使用自己构建的API，是两个不同的标准。shiro框架是一个与spring security类似的开源的权限管理框架，用于访问授权、认证、加密及会话管理。能够支持单机与分布式session管理。相比security，shiro更加简单易用。接下来看看一些知识点', '2019-05-29 20:12:34', '2019-06-26 20:12:37', 'Spring开发', '1140836848315273216');
INSERT INTO `cd_article` VALUES ('1141317528597958658', '程序员年龄增大后的职业出路是什么？', '99%的职业，年龄增大后都没前途。没前途是绝大多数普通人的宿命，有前途的人也用不着等到老。', '\n\n工地上的力工、搬砖的，年龄大了出路是什么？混黑社会的，年龄大了出路是什么？码工不过是一种智力型力工罢了。本质上，绝大多数中产其实跟赤贫阶级都差不多，就是手一停，人就要挨饿。如果心态是把程序员当成世界上最好的职业，我觉得大可不必。其实太多职业比程序员好，只不过程序员适合普通人、穷人、“门槛低”而已；如果心态是怕老了老无所依、失业，不敢做程序员这行，那我劝你跟施一公玩冷冻电镜去，不到老就没出路了，的确不用担心“年龄增大后”；换句话说，要是当了程序员还老无出路，那么干别的您大概率也是老了出问题；生活，本来就是很不容易的。人无远虑必有近忧，我的另外一种取反解法就是：现在过得不错，就开始担心远处的生活了。盛世总会衰败，大宴豪奢之后，往往飞鸟各投林，没事儿读读《红楼梦》，有些现实人总得接受。其实大可不必。先悲观到极点休克治疗下：你要是活不到“年龄增大”那一天呢？不就白担心了？有人说我抬杠，不见得吧？万一写程序累死了呢？万一碰上各种事故了呢？万一生病了呢？其次是，程序员年轻时好歹比其他的搬砖职业稍微多积累一点钱，多买几套房子出租，多存点钱在401K，分散投资，抗风险能力还是稍微比其他行业强一点；不要羡慕医生（注：美国），学医也很苦对吧，再说一个身份问题你怎么解决？我见过40多岁还在考的而且是另一半支持的身份，我自问没这种毅力和勇气；不要羡慕学法律的律师，这语言能力咱也没有对吧，要是当移民律师填个表一年赚几万，还不如当码工去；不要羡慕学商科金融的，能出头的都是人精，就是来做码工也是一等一的，更何况好多都名校出身的。我个人觉得，能当manager的，能创业的，终究还是偏少数。大部分码工，结局都是庸庸碌碌，但真正被逼得跳楼的、穷死的，其实也没几个。从好公司跳到烂公司，再从烂公司跳当contractor，总能有口饭吃。再实在不行了，给人当小工、打下手，去大华超市收银，端盘子，开货车，都是劳动，人能做，咱也能做对吧？更别说有的答案提到了：当老师，教编程，其实是有很多很多出路的。脑子没问题，双手又在，还能饿死活人？社会变化太快了，没人能预测。90年代下岗的时候很多人都接受不了：说好的养一辈子呢？最后这些人也得自己扛对吧。2008年我还听说“DBA越老越吃香”，结果10年后DBA工作岗位大量缩水。会计能干到老吧？也未必，说不定就被软件取代了，还不如码工呢。报社稳定吧？结果现在谁看报纸和刊物？你说那些人要不要改行？变化才是主流，一成不变才是罕见。其实不是抬杠，我只是想说，很多很多的职业，其实都是相当不稳定的：跟经济形势、跟技术、跟资金、跟规定，都是高度相关的。不稳定有两种：看不到的不稳定，和能预料到的不稳定。很多人不慌，是因为根本看不到危机。我想，这个社会确定是往信息化方向走了。那些叫嚷“AI注定会自己写程序淘汰所有码工”的人我认为大概率是外行和新闻记者。信息化下，你说什么专业最接近、最不容易失业、最容易跟上潮流？当然是所有跟编程、数据相关的专业。其实最应该慌的，是售货员、工厂的重复劳动者、麦当劳翻肉饼的、前台等，这些工作早晚或多或少地被机器取代。关键在于心态：你把码工当成神圣的职业，自然受不了这种老了后的落差；你把码工当成修下水道的、抡大锤的，自然会觉得出路多了去了。我这几天也累得不行。现在这公司其实挺累，学东西不怕干活也不怕，主要是心也蛮累的。而且这公司是出了名的喜欢年轻人，我跟20多岁的一比，也的确是有时候略感力不从心。扪心自问，我自己也没有办法，我找不到更好的活计去做，好歹公司还管三餐不是？有时候也感觉累得不行，也很沮丧，但是睡一觉起来又精神百倍了。人生就是这样吧，总有你担心的，也总有解决不了的问题。就算你富有四海，也惧怕死亡，也惧怕失去。说到底，这题目跟程序员一毛钱关系都没有，“年龄增大”是永恒的没出路。我知道，程序员年龄大了怕累。所以我主张的是拒绝996，年轻时别拼太狠，为了仨瓜俩枣玩命996，和上了年纪怕没出路被淘汰的，大概率也是同一拨人对吧。当然，人华为人可能不这么想，人30岁就财务自由了，这也算公平；但你没拿多少钱还使劲拼命的，还在知乎号称自己最优秀可以弯道超车的，就是该认真思考一下了。只不过，人不要乱立flag，觉得年龄大了一定怎样怎样，35岁以上一定不会有技术成长了，30岁以上改行一定晚了，40岁一定刷不动题了。我技术进步最快的几年，反而是在30岁以后。技术成长这些并不是看年龄，而是更多地看机遇和运气，有时候也有个积累的过程。其实码工的出路，还是决定于社会的走向，这没人知道。风口上猪都能飞，关键是风来不来对吧。我个人的计划：自己再好好干几年，技术水平再上个台阶，然后找个著名养老公司一蹲，或是一个二线养老公司休息几年，到快40了再考虑是出来蹦跶还是换个地方蹦跶还是老老实实窝着。我心态很好的：当程序员，好歹让我过去的7、8年里一直过着好日子，而且还是我最年轻的时候，我已经很感激了；我要是当博士后，以我的脾气，还不得活活穷死、气死。人，要知足对吧？能选不太差的，也就可以了。===Update 1 Thanksgiving, Nov. 22nd 2018 ===为什么感恩节还能更新，笨，我在机场等飞机呢。昨天忙了一整天，临睡觉时写的，困得不行有点乱，前言不搭后语，谢大家赞，难道我没写清楚你们居然读明白了？懂行的都知道我为什么忙了一整天，也知道周一发生了什么，我们这还在收拾残局呢。简单来说，周一有一个人在火药桶旁边抽了颗放松烟……从我个人的角度写写30多岁码工的感受：的确是受年龄压力开始增大了。比如二十多岁的小年轻，可能什么都懂，对组里的东西很熟悉。有时候我也怀疑自己是不是智商不够，是不是自学能力太差，是不是基础不行，别人是不是都玩命加班，你知道30多岁的人那种危机感。后来其实想一下就明白：小年轻之所以懂，是因为入组早，当年亲手搭建过那些东西，当然熟了，我自己搭建的东西也是熟得不行啊。跟智商、能力都关系不大，反而是机遇、运气占大头。所以年龄这东西，不是线性的，没必要看太重。周瑜15岁当了东吴的水军都督，扎克伯格20多岁就当CEO、名满天下了，某胖年少万兜鍪，也是80后二十几岁就是世界第三陆军强国的霸王了，敢于对阵罗马帝国了。跟这些人比，我们某乎的是不是都该排队跳楼去？压力一直是有的，只不过看你在不在乎。我有个朋友说得好，大概意思是：压力伤不伤身，在于你怎样认为：你认为压力伤身，它就伤身；你不在乎，可能就不伤身。所以，我琢磨着人活着还是得跟自己比。总跟别人比，总看别人年少有为自己一把年纪还在吭哧吭哧地写代码，当然很痛苦。但我自己就安慰自己：人都名校出身的，还有不少PhD，我特么一个改行的烂校毕业生，混迹多年才能跟人站同一个位置，也算很正常了。为什么我们这个时代的人容易感受到压力、对比和焦虑？作为80后，我觉得我们的时代其实很特殊：从小到大，目睹了奇迹的诞生，跟着奇迹成长，所以我们潜意识里，是认为奇迹是正常的。我在90年代的小时候，的确能感受到几乎每年都会有大量新东西出现，很容易让人误解这种上升应该是永远持续的。这种烙印影响很多人一生。不光物质上，身边谁谁80后创业身价百亿了，谁谁发财了谁谁暴富了，再加上媒体炒作推波助澜，让每个不成功的人都在担忧自己、担忧未来。其实，换个角度想，想想广场协议后的日本普通民众，失落20年，不也是正常过日子么？我在中西部住的时候，能感受到那种静止之美：地广人稀，慢慢吞吞，芝加哥房价10年不涨，难道就不是正常的生活了么？一定要拼命工作、一定要房价飙升、一定要每几年就工资翻倍，才是过高的要求了吧？所以我是觉得，作为普通人，其实能做到几个小目标就算不容易了；甚至我觉得，我们普通人对社会的最大贡献就是不给别人添麻烦。有时候焦虑了，看看自己的小目标就好。有人私信问我现在改行CS晚不晚。我觉得这不决定于我说，我说的都是XX，而决定于：第一，你有没有其他更好的路，如果没有，就是告诉你CS会波折、衰落，你也得学对吧？第二，在于你的追求、能力和目标，是找个舒服地方混日子，还是打拼。CS这产业已经极为庞大，瞎子摸象原理，100个人基本上有100种说法了，里面还夹着很多人云亦云，完全不知道自己说的是什么的。', '2019-06-14 20:17:09', '2019-06-08 20:17:12', '程序员人生', '1141141210015076357');
INSERT INTO `cd_article` VALUES ('1141317528597958659', 'UML建模', 'Unified Modeling Language (UML)又称统一建模语言或标准建模语言，是始于1997年一个OMG标准，它是一个支持模型化和软件系统开发的图形化语言，为软件开发的所有阶段提供模型化和可视化支持，包括由需求分析到规格，到构造和配置。 面向对象的分析与设计(OOA&D，OOAD)方法的发展在80年代末至90年代中出现了一个高潮，UML是这个高潮的产物。作者：大宽宽\n链接：https://www.zhihu.com/question/23569835/answer/559571083\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。\n\nUML是各种类型图的结合体，UML的支持者（以及商业机构）宣称UML有很多能力。比如UML图直接生成代码。这种时候，这种UML模型设计自己本身也可以看作是某种“编程语言“了。在某些特定领域，这种模型设计自动产生代码其实经常见到的。比如Visual Studio的表单设计器就可以大致被理解为一种“模型设计”，随着拖拽，相应的代码被产生出来。但是，UML到底能不能等价于“编程语言“？他的表达能力能不能足够胜任编程工作？现实的情况是几乎不可能。UML只能粗略描述类关系、时序图、流程等。而复杂的逻辑即便写出来，会比直接写代码还难看。如果是这样，为何不直接写代码呢？如果同时修改代码和UML图，怎么保证二者同步呢？早期Eclipse有专门做UML到代码之间同步的工具，而现在几乎没有人用。此外，有些UML的图是专门给人看的，比如“用例图”。这些图和生成代码没任何关系。但是反过来，写了一些代码，然后直接看代码本身很难搞清楚关系，自动产生个类图看看是否可以呢？这个现实一些。目前各种IDE也会多少提供一下这个功能。但是需要强调的是，设计的思路本身并不一定能被类图等这样可以自动生成的东西展现出来。所以用来看个大概还行，但如果真想要让业务代码和本身的设计逻辑对照起来，还是要找到原始的，给人看的设计文档。再比如表现高层的设计意图。这点没有问题。即便不用UML，也会用其他某种形式的图。UML之所以“Unified”，是希望能统一一套符号（比如表示继承的箭头，表示1对多关系的关联等）。不同的人给出的设计可以相互理解。但是，这就涉及到行业本身对图标准性的要求。写代码有编译器可以帮你检查错误，写错了就不过。但是图形本身并没有什么硬性的东西卡你。只有这个组织/行业的规定能够强制，比如画错了就降级降薪甚至开除。因此，如果一个行业并不对此有过多要求（比如互联网），你就不要指望大家能画出多标准的图。此时，你会发现大部分情况下画出来的都是方块，箭头之类的随心所欲的符号，再配合一些简单的文字解释。但一般这种随便画画的图基本上并不会影响理解，反而可能更高效。在一个互相熟悉的团队，做着比较熟悉的事情，随便在白板或者纸上画画就完全能够表达设计意图。并且这还避免了因为画图工具带来的思维上的干扰。讨论后落纸面时，因为代码总是能反生成图的，所以不会把UML模型设计画得很细，而是把当时设计思路写得比较多显得更加有用。像跨团队，跨公司分享设计的情况现在我很少见到。不都做接口吗，不都隐藏了吗，看接口文档啊。到了开源界，都是share代码，没人会画图的……最后，UML宣称能够从模型上能提前验证系统是正确的。像医学、航天等出了篓子就是大事这种领域，提前验证正确性是非常必要的。早年像CSP理论、  演算等也希望能提供一套形式化的方式来验证比如“有没有死锁“等。但UML并非是形式化语言，它能做的也只是为人工的分析提供依据，nothing more。因此它的验证能力比较粗。实际上我们天天用流程图、状态机之类的东西和PM交流，说明产品设计中可能的漏洞和矛盾。只不过没有宣称这就是UML，也没有画的很标准而已，反正都能看懂。', '\n\nUML是各种类型图的结合体，UML的支持者（以及商业机构）宣称UML有很多能力。比如UML图直接生成代码。这种时候，这种UML模型设计自己本身也可以看作是某种“编程语言“了。在某些特定领域，这种模型设计自动产生代码其实经常见到的。比如Visual Studio的表单设计器就可以大致被理解为一种“模型设计”，随着拖拽，相应的代码被产生出来。但是，UML到底能不能等价于“编程语言“？他的表达能力能不能足够胜任编程工作？现实的情况是几乎不可能。UML只能粗略描述类关系、时序图、流程等。而复杂的逻辑即便写出来，会比直接写代码还难看。如果是这样，为何不直接写代码呢？如果同时修改代码和UML图，怎么保证二者同步呢？早期Eclipse有专门做UML到代码之间同步的工具，而现在几乎没有人用。此外，有些UML的图是专门给人看的，比如“用例图”。这些图和生成代码没任何关系。但是反过来，写了一些代码，然后直接看代码本身很难搞清楚关系，自动产生个类图看看是否可以呢？这个现实一些。目前各种IDE也会多少提供一下这个功能。但是需要强调的是，设计的思路本身并不一定能被类图等这样可以自动生成的东西展现出来。所以用来看个大概还行，但如果真想要让业务代码和本身的设计逻辑对照起来，还是要找到原始的，给人看的设计文档。再比如表现高层的设计意图。这点没有问题。即便不用UML，也会用其他某种形式的图。UML之所以“Unified”，是希望能统一一套符号（比如表示继承的箭头，表示1对多关系的关联等）。不同的人给出的设计可以相互理解。但是，这就涉及到行业本身对图标准性的要求。写代码有编译器可以帮你检查错误，写错了就不过。但是图形本身并没有什么硬性的东西卡你。只有这个组织/行业的规定能够强制，比如画错了就降级降薪甚至开除。因此，如果一个行业并不对此有过多要求（比如互联网），你就不要指望大家能画出多标准的图。此时，你会发现大部分情况下画出来的都是方块，箭头之类的随心所欲的符号，再配合一些简单的文字解释。但一般这种随便画画的图基本上并不会影响理解，反而可能更高效。在一个互相熟悉的团队，做着比较熟悉的事情，随便在白板或者纸上画画就完全能够表达设计意图。并且这还避免了因为画图工具带来的思维上的干扰。讨论后落纸面时，因为代码总是能反生成图的，所以不会把UML模型设计画得很细，而是把当时设计思路写得比较多显得更加有用。像跨团队，跨公司分享设计的情况现在我很少见到。不都做接口吗，不都隐藏了吗，看接口文档啊。到了开源界，都是share代码，没人会画图的……最后，UML宣称能够从模型上能提前验证系统是正确的。像医学、航天等出了篓子就是大事这种领域，提前验证正确性是非常必要的。早年像CSP理论、  演算等也希望能提供一套形式化的方式来验证比如“有没有死锁“等。但UML并非是形式化语言，它能做的也只是为人工的分析提供依据，nothing more。因此它的验证能力比较粗。实际上我们天天用流程图、状态机之类的东西和PM交流，说明产品设计中可能的漏洞和矛盾。只不过没有宣称这就是UML，也没有画的很标准而已，反正都能看懂。', '2019-06-21 20:18:38', '2019-06-21 20:18:41', 'UML建模', '1141141210015076357');

-- ----------------------------
-- Table structure for cd_article_comment
-- ----------------------------
DROP TABLE IF EXISTS `cd_article_comment`;
CREATE TABLE `cd_article_comment`  (
  `articlecomment_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `timestamp` varchar(0) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `article_id` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`articlecomment_id`) USING BTREE,
  INDEX `评论所属文章id`(`article_id`) USING BTREE,
  INDEX `评论用户id`(`user_id`) USING BTREE,
  CONSTRAINT `评论用户id` FOREIGN KEY (`user_id`) REFERENCES `cd_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `评论所属文章id` FOREIGN KEY (`article_id`) REFERENCES `cd_article` (`article_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cd_articlecomment_reply
-- ----------------------------
DROP TABLE IF EXISTS `cd_articlecomment_reply`;
CREATE TABLE `cd_articlecomment_reply`  (
  `articleCommentReplyId` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `timestamp` varchar(0) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `articlecomment_id` int(11) NULL DEFAULT NULL,
  `user_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`articleCommentReplyId`) USING BTREE,
  INDEX `回复所属评论id`(`articlecomment_id`) USING BTREE,
  INDEX `回复所属用户`(`user_id`) USING BTREE,
  CONSTRAINT `回复所属用户` FOREIGN KEY (`user_id`) REFERENCES `cd_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `回复所属评论id` FOREIGN KEY (`articlecomment_id`) REFERENCES `cd_article_comment` (`articlecomment_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cd_collection_answer
-- ----------------------------
DROP TABLE IF EXISTS `cd_collection_answer`;
CREATE TABLE `cd_collection_answer`  (
  `collection_id` int(11) NOT NULL AUTO_INCREMENT,
  `answer_id` int(11) NULL DEFAULT NULL,
  `catagory_id` int(11) NULL DEFAULT NULL,
  `collectiontime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`collection_id`) USING BTREE,
  INDEX `所属分类`(`catagory_id`) USING BTREE,
  INDEX `所属回答`(`answer_id`) USING BTREE,
  CONSTRAINT `所属分类` FOREIGN KEY (`catagory_id`) REFERENCES `cd_collection_catagory` (`catagory_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `所属回答` FOREIGN KEY (`answer_id`) REFERENCES `cd_answer` (`answer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cd_collection_catagory
-- ----------------------------
DROP TABLE IF EXISTS `cd_collection_catagory`;
CREATE TABLE `cd_collection_catagory`  (
  `catagory_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime NULL DEFAULT NULL,
  `updatetime` datetime NULL DEFAULT NULL,
  `catagory_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`catagory_id`) USING BTREE,
  INDEX `所属用户`(`user_id`) USING BTREE,
  CONSTRAINT `所属用户` FOREIGN KEY (`user_id`) REFERENCES `cd_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cd_new_userinform
-- ----------------------------
DROP TABLE IF EXISTS `cd_new_userinform`;
CREATE TABLE `cd_new_userinform`  (
  `inform_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `informtime` datetime NULL DEFAULT NULL,
  `informinfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`inform_id`) USING BTREE,
  INDEX `新通知所属的用户id`(`user_id`) USING BTREE,
  CONSTRAINT `新通知所属的用户id` FOREIGN KEY (`user_id`) REFERENCES `cd_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cd_old_userinform
-- ----------------------------
DROP TABLE IF EXISTS `cd_old_userinform`;
CREATE TABLE `cd_old_userinform`  (
  `inform_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `informtime` datetime NULL DEFAULT NULL,
  `informinfo` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`inform_id`) USING BTREE,
  INDEX `旧通知所属用户id`(`user_id`) USING BTREE,
  CONSTRAINT `旧通知所属用户id` FOREIGN KEY (`user_id`) REFERENCES `cd_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cd_question
-- ----------------------------
DROP TABLE IF EXISTS `cd_question`;
CREATE TABLE `cd_question`  (
  `question_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` datetime NULL DEFAULT NULL,
  `updatetime` datetime NULL DEFAULT NULL,
  `hotindex` int(11) NULL DEFAULT NULL,
  `tag` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`question_id`) USING BTREE,
  INDEX `问题属于的用户`(`user_id`) USING BTREE,
  CONSTRAINT `问题属于的用户` FOREIGN KEY (`user_id`) REFERENCES `cd_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cd_question
-- ----------------------------
INSERT INTO `cd_question` VALUES ('1141317528597958661', '做PPT时有哪些神操作？', 'PPT中有哪些能迅速提高效率、解决问题的Office技巧？或者有哪些一般人不会的，但是很好用的PPT神技能？\r\n\r\n\r\n', '2019-06-20 20:22:00', '2019-06-20 20:22:03', 120, '办公效率', '1140836848315273216');
INSERT INTO `cd_question` VALUES ('1141317528602152962', '如何看待阿里巴巴孤尽觉得Java是世界上最好的语言？', 'Java是一门有情怀的语言，至于为什么，像这样的井底之蛙是不会感受到的！', '2019-06-21 20:36:06', '2019-06-22 20:36:09', 98, '软件开发', '1141141210015076357');
INSERT INTO `cd_question` VALUES ('1141326426180554752', '高性价比的入门机械键盘有哪些推荐？', '要求可能有些多了，但学生党预算真的有限，我本身也是个游戏爱好者，但不太了解外设知识，希望能花低价买到合算的键盘吧，只要差不多的键盘都可以向我推荐，谢谢', '2019-06-20 21:01:00', '2019-06-21 21:01:03', 93, '计算机硬件', '1141148861939716023');
INSERT INTO `cd_question` VALUES ('1141326426180554755', '为什么中国自主研发CPU之路十分艰难？', 'RT，所谓“龙芯”也不是面向PC的', '2019-06-21 20:59:10', '2019-07-05 20:59:13', 163, '计算机硬件', '1141141210015076357');
INSERT INTO `cd_question` VALUES ('1141326426180554758', '有什么值得一看再看的书吗？', '想在寒假或是闲余时间看，要值得收藏的。', '2019-05-30 20:58:00', '2019-07-01 20:58:04', 90, '学习生活', '1141148861939716023');
INSERT INTO `cd_question` VALUES ('1141326426180554759', '为什么大多数人宁愿吃生活的苦，也不愿吃学习的苦？', '补充说明：要知道“吃得苦中苦，方为人上人”中的\"苦\"不仅仅是生活的苦，还有学习、工作等其它苦。吃学习的苦能提高生活质量(物质或精神)，但一味地吃生活的苦，只能让人变得平庸且麻木。', '2019-06-20 20:55:22', '2019-06-24 20:55:25', 156, '精神洗涤', '1141141210015076357');
INSERT INTO `cd_question` VALUES ('1141326426180554760', '那些对人生有意义的电影？', '请大神推荐一下', '2019-06-14 20:52:58', '2019-06-27 20:53:01', 63, '娱乐生活', '1141148861939716096');
INSERT INTO `cd_question` VALUES ('1141326426180554761', '一个年轻人，手上有2万有什么好的理财建议？', '看来我清的名头比较好用（明天校庆，我清生快，我也用一用母校名头唬唬人），这个就是最最普通的价值平均策略，稍微对投资有点基本认识的人，都会知道这个策略有个很不好的地方——超大的现金流压力。', '2019-06-16 20:50:58', '2019-06-30 20:51:02', 93, '人生理财', '1141141210015076357');
INSERT INTO `cd_question` VALUES ('1141326426180554762', 'Java程序员，最常用的20％技术有哪些？', '我听说编程语言，经常使用的是其中20％的技术。在Java这门语言中，这20％包括哪些内容？参加培训两个月了，还有两个月的时间，要想在两个月后，找到一份Java初级程序员的工作，有哪些是必须掌握的，有哪些是可以现学现卖的？一个完整的Javaweb项目，有哪些具体模块，每个模块用到的技术是哪些？', '2019-06-21 20:47:20', '2019-06-25 20:47:24', 620, '软件开发', '1141148861939716096');

-- ----------------------------
-- Table structure for cd_user
-- ----------------------------
DROP TABLE IF EXISTS `cd_user`;
CREATE TABLE `cd_user`  (
  `user_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `signature` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '签名~~',
  `headimg` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'assets/images/headimges/default_headimg.jpg',
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` timestamp NULL DEFAULT NULL,
  `updatetime` timestamp NULL DEFAULT NULL,
  `lockedflag` int(10) NULL DEFAULT 0,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cd_user
-- ----------------------------
INSERT INTO `cd_user` VALUES ('1140836848315273216', '17605224281', 'djy123456', '丁建阳', NULL, '海底月是天上月，眼前人是心上人', 'assets/images/headimges/djy.jpg', NULL, '2019-06-28 20:44:10', NULL, 0);
INSERT INTO `cd_user` VALUES ('1141141210015076357', '13462341587', 'slg123456', '孙龙阁', NULL, '问：什么是勇敢？\r\n\r\n答：不要回头看', 'assets/images/headimges/slg.jpg', NULL, '2019-06-17 22:44:19', '2019-06-17 22:44:19', 0);
INSERT INTO `cd_user` VALUES ('1141141276717092880', '18851999121', 'fxy123456', '付晓阳', 'fuxiaoyangop@qq.com', '晚安，我已经安排了会有蚊子替我亲你', 'assets/images/headimges/fxy.jpg', NULL, '2019-06-25 20:44:06', NULL, 0);
INSERT INTO `cd_user` VALUES ('1141148861939716023', '13951882878', 'hj123456', '何靖', NULL, '签名~~', 'assets/images/headimges/default_headimg.jpg', NULL, '2019-06-19 09:27:21', '2019-06-19 09:27:24', 0);
INSERT INTO `cd_user` VALUES ('1141148861939716096', '13951882898', 'zl123456', '张蕾', NULL, '签名~~', 'assets/images/headimges/default_headimg.jpg', NULL, '2019-06-30 20:44:03', NULL, 0);
INSERT INTO `cd_user` VALUES ('1141317528606347266', '13837137999', 'kan123456', 'kanmars', NULL, '大事不惜身，小利不亡命', 'assets/images/headimges/default_headimg.jpg', NULL, '2019-06-28 20:43:59', NULL, 0);
INSERT INTO `cd_user` VALUES ('1141317528606347267', '18868730888', 'lxf123456', '廖雪峰', NULL, '签名~~', 'assets/images/headimges/default_headimg.jpg', NULL, '2019-06-20 20:41:22', '2019-06-30 20:41:26', 0);
INSERT INTO `cd_user` VALUES ('1141324648353501184', '15851820202', 'gj123456', '孤近', NULL, '签名~~', 'assets/images/headimges/default_headimg.jpg', NULL, '2019-06-19 20:39:36', '2019-06-19 20:39:36', 0);
INSERT INTO `cd_user` VALUES ('1141326426172166144', '18187879292 ', 'sw123456', '十万个为什么', NULL, '签名~~', 'assets/images/headimges/default_headimg.jpg', NULL, '2019-06-06 21:07:00', '2019-06-23 21:07:02', 0);
INSERT INTO `cd_user` VALUES ('1141326426172166147', '13357024777 ', 'dz123456', '达子', NULL, '签名~~', 'assets/images/headimges/default_headimg.jpg', NULL, '2019-05-30 21:06:09', '2019-06-01 21:06:13', 0);
INSERT INTO `cd_user` VALUES ('1141326426172166150', '17312434888', 'bo123456', 'Bob', NULL, '签名~~', 'assets/images/headimges/default_headimg.jpg', NULL, '2019-07-03 21:05:14', '2019-07-04 21:05:17', 0);
INSERT INTO `cd_user` VALUES ('1141326426172166152', '19939495969', 'tl123456', '特雷西亚', NULL, '签名~~', 'assets/images/headimges/default_headimg.jpg', NULL, '2019-06-21 21:03:45', '2019-07-04 21:03:48', 0);

-- ----------------------------
-- Table structure for cd_user_attention
-- ----------------------------
DROP TABLE IF EXISTS `cd_user_attention`;
CREATE TABLE `cd_user_attention`  (
  `attention_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attention_user_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`attention_id`) USING BTREE,
  INDEX `关注用户id`(`user_id`) USING BTREE,
  INDEX `被关注用户id`(`attention_user_id`) USING BTREE,
  CONSTRAINT `被关注用户id` FOREIGN KEY (`attention_user_id`) REFERENCES `cd_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `关注用户id` FOREIGN KEY (`user_id`) REFERENCES `cd_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_activities_statistics
-- ----------------------------
DROP TABLE IF EXISTS `sys_activities_statistics`;
CREATE TABLE `sys_activities_statistics`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time01` int(11) NULL DEFAULT NULL COMMENT '0点-3点',
  `time02` int(11) NULL DEFAULT NULL COMMENT '3点-6点',
  `time03` int(11) NULL DEFAULT NULL COMMENT '6点-9点',
  `time04` int(11) NULL DEFAULT NULL COMMENT '9点-12点',
  `time05` int(11) NULL DEFAULT NULL COMMENT '12点-15点',
  `time06` int(11) NULL DEFAULT NULL COMMENT '15点-18点',
  `time07` int(11) NULL DEFAULT NULL COMMENT '18点-21点',
  `time08` int(11) NULL DEFAULT NULL COMMENT '21点-24点',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_admin
-- ----------------------------
DROP TABLE IF EXISTS `sys_admin`;
CREATE TABLE `sys_admin`  (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `headimg` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员头像',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员密码',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员昵称',
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员邮箱',
  `phone` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员手机号',
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员qq',
  `address` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员地址',
  `createtime` timestamp NULL DEFAULT NULL COMMENT '管理员创建时间',
  `updatetime` timestamp NULL DEFAULT NULL COMMENT '管理员更新时间',
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员性别',
  `admin_flag` int(5) NULL DEFAULT NULL COMMENT '管理员权限标志位',
  PRIMARY KEY (`adminid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_lockeduserinfo
-- ----------------------------
DROP TABLE IF EXISTS `sys_lockeduserinfo`;
CREATE TABLE `sys_lockeduserinfo`  (
  `lockedinfo_Id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_id` int(11) NULL DEFAULT NULL,
  `lockedtime` datetime NULL DEFAULT NULL,
  `lockedcause` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`lockedinfo_Id`) USING BTREE,
  INDEX `被锁定用户ID`(`user_id`) USING BTREE,
  INDEX `锁定某用户管理员ID`(`admin_id`) USING BTREE,
  CONSTRAINT `锁定某用户管理员ID` FOREIGN KEY (`admin_id`) REFERENCES `sys_admin` (`adminid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `被锁定用户ID` FOREIGN KEY (`user_id`) REFERENCES `cd_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;

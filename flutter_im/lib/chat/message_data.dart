import 'dart:core';

enum MessageType { SYSTEM, PUBLIC, CHAT, GROUP }

class MessageData {
  String avatar;
  String title;
  String subTitle;
  DateTime time;
  MessageType type;

  MessageData(this.avatar, this.title, this.subTitle, this.time, this.type);
}

List<MessageData> messageData = [
  MessageData(
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585136047942&di=7bf48af69c5f25096017e5b996ae8726&imgtype=0&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farticle%2F73f3dc45d407f4d79cb45a091df1b34a9c938fc6.jpg',
      '一休哥',
      '今天来我家吃饭么？',
      DateTime.now(),
      MessageType.CHAT),
  MessageData(
      'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=4150501142,71758842&fm=26&gp=0.jpg',
      '多啦而梦',
      '大雄，你又拿我的穿越道具去干啥了？',
      DateTime.now(),
      MessageType.CHAT),
  MessageData(
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585136112408&di=1bcca9a4edfd781b9943a92d0a1176ab&imgtype=0&src=http%3A%2F%2Fstatic.lagou.com%2Fthumbnail_300x300%2Fi%2Fimage%2FM00%2F02%2F0C%2FCgp3O1aA0FWASA95AADgYZcaEHI709.jpg',
      '沙师弟',
      '猴哥，最近考虑花果山么？',
      DateTime.now(),
      MessageType.CHAT),
];

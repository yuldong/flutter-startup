class ContactVO {
  String seationKey;
  String name;
  String avatarUrl;

  ContactVO(this.seationKey, this.name, this.avatarUrl);
}

List<ContactVO> contactData = [
  ContactVO('A', 'A张三',
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585136520497&di=064694556a72480b91770a84ce7b9f0f&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20181211%2F5ad726edb6d54dfd9619efc65072f6bf.jpeg'),
  ContactVO('A', '阿黄',
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585136520497&di=064694556a72480b91770a84ce7b9f0f&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20181211%2F5ad726edb6d54dfd9619efc65072f6bf.jpeg'),
  ContactVO('B', '波波',
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585136520497&di=064694556a72480b91770a84ce7b9f0f&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20181211%2F5ad726edb6d54dfd9619efc65072f6bf.jpeg'),
];

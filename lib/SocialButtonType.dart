enum SocialButtonType {
  mail,
  github,
  stackoverflow,
  linkedin,
  skype,
  twitter,
  instagram
}

extension SocialButtonTypeExtension on SocialButtonType {
  String get asset {
    switch (this) {
      case SocialButtonType.github:
        return 'assets/github.png';
      case SocialButtonType.mail:
        return 'assets/mail.png';
      case SocialButtonType.stackoverflow:
        return 'assets/stackoverflow.png';
      case SocialButtonType.linkedin:
        return 'assets/linkedin.png';
      case SocialButtonType.skype:
        return 'assets/skype.png';
      case SocialButtonType.twitter:
        return 'assets/twitter.png';
      case SocialButtonType.instagram:
        return 'assets/instagram.png';
      default:
        return null;
    }
  }

  String get webURI {
    switch (this) {
      case SocialButtonType.github:
        return 'https://github.com/PankajGaikar';
      case SocialButtonType.mail:
        return 'mailto:pankajs.gaikar@gmail.com';
      case SocialButtonType.stackoverflow:
        return 'https://stackoverflow.com/users/3307233/pankaj-gaikar';
      case SocialButtonType.linkedin:
        return 'https://www.linkedin.com/in/pankajgaikar/';
      case SocialButtonType.skype:
        return 'https://join.skype.com/invite/urDDugK3uLCN';
      case SocialButtonType.twitter:
        return 'https://twitter.com/MePankajGaikar';
      case SocialButtonType.instagram:
        return 'https://www.instagram.com/pankajgaikar/';

      default:
        return null;
    }
  }
}

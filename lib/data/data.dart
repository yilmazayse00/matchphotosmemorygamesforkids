import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

List<String> avengers(){
  return [
    'https://1.bp.blogspot.com/-bwbs_whiHKs/YBsVeZw-EwI/AAAAAAABKwk/K2mpAIo6cZwh1-90_SzQF0rMH4CaeOM7wCLcBGAsYHQ/s320/vision.png',
    'https://1.bp.blogspot.com/-bwbs_whiHKs/YBsVeZw-EwI/AAAAAAABKwk/K2mpAIo6cZwh1-90_SzQF0rMH4CaeOM7wCLcBGAsYHQ/s320/vision.png',
    'https://1.bp.blogspot.com/-ibwvsvn1SzM/YBsVWhGr5QI/AAAAAAABKwc/UwkN1CiKFiILBHqm45Gny68ZleW8O5DQwCLcBGAsYHQ/s320/thor.png',
    'https://1.bp.blogspot.com/-ibwvsvn1SzM/YBsVWhGr5QI/AAAAAAABKwc/UwkN1CiKFiILBHqm45Gny68ZleW8O5DQwCLcBGAsYHQ/s320/thor.png',
    'https://1.bp.blogspot.com/-MHMac4EzCls/YBsVWL3PhJI/AAAAAAABKwY/j1cwG4dc3Rc-Z0cPFhnYuL-Vs-xIVurIQCLcBGAsYHQ/s320/thanos.png',
    'https://1.bp.blogspot.com/-MHMac4EzCls/YBsVWL3PhJI/AAAAAAABKwY/j1cwG4dc3Rc-Z0cPFhnYuL-Vs-xIVurIQCLcBGAsYHQ/s320/thanos.png',
    'https://1.bp.blogspot.com/-841PnChD7IU/YBsVWH-nkDI/AAAAAAABKwU/pZ2JoOM_hPcGytZdku-hoT5ftJLZuevkwCLcBGAsYHQ/s320/than.png',
    'https://1.bp.blogspot.com/-841PnChD7IU/YBsVWH-nkDI/AAAAAAABKwU/pZ2JoOM_hPcGytZdku-hoT5ftJLZuevkwCLcBGAsYHQ/s320/than.png',
    'https://1.bp.blogspot.com/-heFgBtAAmww/YBsVV8CwF9I/AAAAAAABKwQ/gj_JmqXdAAUOPcqdZ0MXtKzxIJnfSDdwACLcBGAsYHQ/s320/spiderman.png',
    'https://1.bp.blogspot.com/-heFgBtAAmww/YBsVV8CwF9I/AAAAAAABKwQ/gj_JmqXdAAUOPcqdZ0MXtKzxIJnfSDdwACLcBGAsYHQ/s320/spiderman.png',
    'https://1.bp.blogspot.com/-MziFZUh_khg/YBsVVmBvm0I/AAAAAAABKwM/Dw8uPsUnrAchzFmmFQueJ5zll4-tgzbKgCLcBGAsYHQ/s320/ironman.png',
    'https://1.bp.blogspot.com/-MziFZUh_khg/YBsVVmBvm0I/AAAAAAABKwM/Dw8uPsUnrAchzFmmFQueJ5zll4-tgzbKgCLcBGAsYHQ/s320/ironman.png',
    'https://1.bp.blogspot.com/-Ul7F8JFNauc/YBsVVismSMI/AAAAAAABKwI/9ictu0685mYP6PuFgy9iRfYZT-UHlk18QCLcBGAsYHQ/s320/hulk.png',
    'https://1.bp.blogspot.com/-Ul7F8JFNauc/YBsVVismSMI/AAAAAAABKwI/9ictu0685mYP6PuFgy9iRfYZT-UHlk18QCLcBGAsYHQ/s320/hulk.png',
    'https://1.bp.blogspot.com/-22ifursMkfA/YBsVVZx6gSI/AAAAAAABKwE/kAqfWMis1REH8RNFVUVKzY8dhW6v93vPgCLcBGAsYHQ/s320/gruth.png',
    'https://1.bp.blogspot.com/-22ifursMkfA/YBsVVZx6gSI/AAAAAAABKwE/kAqfWMis1REH8RNFVUVKzY8dhW6v93vPgCLcBGAsYHQ/s320/gruth.png',
    'https://1.bp.blogspot.com/-sm_KMxqIOsY/YBsVVKjlNsI/AAAAAAABKwA/5xqmDDC42R4aGcgMQQbn11op_EKlHJp3QCLcBGAsYHQ/s320/galaksi.png',
    'https://1.bp.blogspot.com/-sm_KMxqIOsY/YBsVVKjlNsI/AAAAAAABKwA/5xqmDDC42R4aGcgMQQbn11op_EKlHJp3QCLcBGAsYHQ/s320/galaksi.png',
    'https://1.bp.blogspot.com/-hbv_YVYwVGI/YBsVVO1tpEI/AAAAAAABKv8/40pCrHuHVjQwOoKQ6Db-J009ucLEKpBjgCLcBGAsYHQ/s320/drstrange.png',
    'https://1.bp.blogspot.com/-hbv_YVYwVGI/YBsVVO1tpEI/AAAAAAABKv8/40pCrHuHVjQwOoKQ6Db-J009ucLEKpBjgCLcBGAsYHQ/s320/drstrange.png',
    'https://1.bp.blogspot.com/-YVn9nLVVt_E/YBsVU3x_bLI/AAAAAAABKv4/Us7_rtll7e8izqzziM8auTAk4uoX3TjagCLcBGAsYHQ/s320/captainamerica.png',
    'https://1.bp.blogspot.com/-YVn9nLVVt_E/YBsVU3x_bLI/AAAAAAABKv4/Us7_rtll7e8izqzziM8auTAk4uoX3TjagCLcBGAsYHQ/s320/captainamerica.png',
    'https://1.bp.blogspot.com/-6E8hXD5Pl5c/YBsVUFvzGZI/AAAAAAABKvw/E0Z5bnhjIxk8ONVhCA-mYdzlkLE7eV8YwCLcBGAsYHQ/s0/blackpanter.png',
    'https://1.bp.blogspot.com/-6E8hXD5Pl5c/YBsVUFvzGZI/AAAAAAABKvw/E0Z5bnhjIxk8ONVhCA-mYdzlkLE7eV8YwCLcBGAsYHQ/s0/blackpanter.png',
    'https://1.bp.blogspot.com/-sJiBvmupPPM/YBsVUBL8xKI/AAAAAAABKv0/cUJ0BMtQ6aMdpsynRXZreuJLwA0jmJzcQCLcBGAsYHQ/s320/antman.png',
    'https://1.bp.blogspot.com/-sJiBvmupPPM/YBsVUBL8xKI/AAAAAAABKv0/cUJ0BMtQ6aMdpsynRXZreuJLwA0jmJzcQCLcBGAsYHQ/s320/antman.png',
  ];
}
List<String> disney(){
  return [
    'https://1.bp.blogspot.com/-qRCkspVoheU/YBrOyxSMcWI/AAAAAAABKvI/7gLZ1q9t_kE-Zcs7h1ZNi_xU9gCtMPrEwCLcBGAsYHQ/s320/rapunzel.png',
    'https://1.bp.blogspot.com/-qRCkspVoheU/YBrOyxSMcWI/AAAAAAABKvI/7gLZ1q9t_kE-Zcs7h1ZNi_xU9gCtMPrEwCLcBGAsYHQ/s320/rapunzel.png',
    'https://1.bp.blogspot.com/-1Qv6WAlvNgo/YBrOy3NRy_I/AAAAAAABKvE/wEBg_lC4rjA3kisFpQUWtKQP9FMVDz27ACLcBGAsYHQ/s320/pamuk.png',
    'https://1.bp.blogspot.com/-1Qv6WAlvNgo/YBrOy3NRy_I/AAAAAAABKvE/wEBg_lC4rjA3kisFpQUWtKQP9FMVDz27ACLcBGAsYHQ/s320/pamuk.png',
    'https://1.bp.blogspot.com/-BoJYs4y_JO0/YBrOxXMMbTI/AAAAAAABKus/fS-1acz1kwgRbihj7_h_ukNHHMvz9-J4gCLcBGAsYHQ/s320/p.png',
    'https://1.bp.blogspot.com/-BoJYs4y_JO0/YBrOxXMMbTI/AAAAAAABKus/fS-1acz1kwgRbihj7_h_ukNHHMvz9-J4gCLcBGAsYHQ/s320/p.png',
    'https://1.bp.blogspot.com/-7zP27lgR1fc/YBrOyXy1mLI/AAAAAAABKvA/W-0dIyUX4GYJ16qW1vstRXayqY6K_y7XwCLcBGAsYHQ/s320/p6.png',
    'https://1.bp.blogspot.com/-7zP27lgR1fc/YBrOyXy1mLI/AAAAAAABKvA/W-0dIyUX4GYJ16qW1vstRXayqY6K_y7XwCLcBGAsYHQ/s320/p6.png',
    'https://1.bp.blogspot.com/-jz8vtMLZ9dA/YBrOyLvCDKI/AAAAAAABKu8/SRQJYJwvlj4HzjLQZWSAmQbfxudiwHD3QCLcBGAsYHQ/s320/p5.png',
    'https://1.bp.blogspot.com/-jz8vtMLZ9dA/YBrOyLvCDKI/AAAAAAABKu8/SRQJYJwvlj4HzjLQZWSAmQbfxudiwHD3QCLcBGAsYHQ/s320/p5.png',
    'https://1.bp.blogspot.com/-fhKG9Y_lbuk/YBrOyPU9_HI/AAAAAAABKu4/Rablo40LJIIOGJIjVe9pN0mAWBM3yyKmwCLcBGAsYHQ/s320/p4.png',
    'https://1.bp.blogspot.com/-fhKG9Y_lbuk/YBrOyPU9_HI/AAAAAAABKu4/Rablo40LJIIOGJIjVe9pN0mAWBM3yyKmwCLcBGAsYHQ/s320/p4.png',
    'https://1.bp.blogspot.com/-g-yjqCuUrg0/YBrOxKHlHZI/AAAAAAABKuo/7h30sRFz1pwJB8hemd0xYPvsSL-KQqelQCLcBGAsYHQ/s320/frog.png',
    'https://1.bp.blogspot.com/-g-yjqCuUrg0/YBrOxKHlHZI/AAAAAAABKuo/7h30sRFz1pwJB8hemd0xYPvsSL-KQqelQCLcBGAsYHQ/s320/frog.png',
    'https://1.bp.blogspot.com/-nsgc_dvClyo/YBrOwSuQNUI/AAAAAAABKuc/C8CPjTIxDtoghSt1NGVm9hg5aw8K4ZIJgCLcBGAsYHQ/s320/beauty.png',
    'https://1.bp.blogspot.com/-nsgc_dvClyo/YBrOwSuQNUI/AAAAAAABKuc/C8CPjTIxDtoghSt1NGVm9hg5aw8K4ZIJgCLcBGAsYHQ/s320/beauty.png',
    'https://1.bp.blogspot.com/-RMpjoqjaPeI/YBrOwj-ESKI/AAAAAAABKuk/tXxKk6h4vhU9kWd6KitEmmCTOzVxODZHgCLcBGAsYHQ/s320/ariel.png',
    'https://1.bp.blogspot.com/-RMpjoqjaPeI/YBrOwj-ESKI/AAAAAAABKuk/tXxKk6h4vhU9kWd6KitEmmCTOzVxODZHgCLcBGAsYHQ/s320/ariel.png',
    'https://1.bp.blogspot.com/-m0k5nNkk1gw/YBrOwZ5x5zI/AAAAAAABKug/4trrQG92yNwKpaQG0ht5L2CnxFvJK1gnQCLcBGAsYHQ/s320/ariel2.png',
    'https://1.bp.blogspot.com/-m0k5nNkk1gw/YBrOwZ5x5zI/AAAAAAABKug/4trrQG92yNwKpaQG0ht5L2CnxFvJK1gnQCLcBGAsYHQ/s320/ariel2.png',
  ];
}
List<String> frozen(){
  return [
    'https://1.bp.blogspot.com/-OKwa1QtV7sA/YBsVw0zL8MI/AAAAAAABKxM/sOqKhrjO0QEWil_Axd5aqIVpCuUAS0uSgCLcBGAsYHQ/s320/olaf.png',
    'https://1.bp.blogspot.com/-OKwa1QtV7sA/YBsVw0zL8MI/AAAAAAABKxM/sOqKhrjO0QEWil_Axd5aqIVpCuUAS0uSgCLcBGAsYHQ/s320/olaf.png',
    'https://1.bp.blogspot.com/-tlSioHqQ7GQ/YBsVwBTyjrI/AAAAAAABKxA/jINitEXBNfwFqthQ5vYQW8ZQv8u10YrGACLcBGAsYHQ/s0/hiclipart.com%2B%25284%2529.png',
    'https://1.bp.blogspot.com/-tlSioHqQ7GQ/YBsVwBTyjrI/AAAAAAABKxA/jINitEXBNfwFqthQ5vYQW8ZQv8u10YrGACLcBGAsYHQ/s0/hiclipart.com%2B%25284%2529.png',
    'https://1.bp.blogspot.com/-EwWk7_Bd9nI/YBsVwFgzDxI/AAAAAAABKxI/aYd496-sNpME5A8zARCCTRy90Te6GdCBgCLcBGAsYHQ/s0/Bruni.png',
    'https://1.bp.blogspot.com/-EwWk7_Bd9nI/YBsVwFgzDxI/AAAAAAABKxI/aYd496-sNpME5A8zARCCTRy90Te6GdCBgCLcBGAsYHQ/s0/Bruni.png',
    'https://1.bp.blogspot.com/-6468wrhYV_A/YBsWQdP--fI/AAAAAAABKx0/08oTEQTzk_0Y1bLt2R5RYEqr3dzg7NyhwCLcBGAsYHQ/s320/hiclipart.com%2B%25285%2529.png',
    'https://1.bp.blogspot.com/-6468wrhYV_A/YBsWQdP--fI/AAAAAAABKx0/08oTEQTzk_0Y1bLt2R5RYEqr3dzg7NyhwCLcBGAsYHQ/s320/hiclipart.com%2B%25285%2529.png',
    'https://1.bp.blogspot.com/-B4_OoOMm0wU/YBsWL7DgXMI/AAAAAAABKxo/DZ3hVQG1BKUNnm_339QmgdhlJ6YnpoHMACLcBGAsYHQ/s320/anna.png',
    'https://1.bp.blogspot.com/-B4_OoOMm0wU/YBsWL7DgXMI/AAAAAAABKxo/DZ3hVQG1BKUNnm_339QmgdhlJ6YnpoHMACLcBGAsYHQ/s320/anna.png',
    'https://1.bp.blogspot.com/-1zN9XhKeUyg/YBsWQl1MskI/AAAAAAABKx4/nlZN6mnTeJkNJbLKiek0MAFwvh2U9O6kQCLcBGAsYHQ/s320/elsa.png',
    'https://1.bp.blogspot.com/-1zN9XhKeUyg/YBsWQl1MskI/AAAAAAABKx4/nlZN6mnTeJkNJbLKiek0MAFwvh2U9O6kQCLcBGAsYHQ/s320/elsa.png',
    'https://1.bp.blogspot.com/-Vq8IoRyHrxY/YBsWbmIsNLI/AAAAAAABKx8/otTFvvRmXlYHokuvob9PBY8c6_sMNtW2gCLcBGAsYHQ/s320/klipartz.com%2B%252816%2529.png',
    'https://1.bp.blogspot.com/-Vq8IoRyHrxY/YBsWbmIsNLI/AAAAAAABKx8/otTFvvRmXlYHokuvob9PBY8c6_sMNtW2gCLcBGAsYHQ/s320/klipartz.com%2B%252816%2529.png',
    'https://1.bp.blogspot.com/-C6MdCVaoPyE/YBsWhFOmUnI/AAAAAAABKyI/mpcn-JN8qas-cpl3gSOSh8XDH_5eRatRQCLcBGAsYHQ/s0/olf.png',
    'https://1.bp.blogspot.com/-C6MdCVaoPyE/YBsWhFOmUnI/AAAAAAABKyI/mpcn-JN8qas-cpl3gSOSh8XDH_5eRatRQCLcBGAsYHQ/s0/olf.png',
  ];
}
List<String> pjmasks(){
  return [
    'https://1.bp.blogspot.com/-32ITAH1Ml38/YBq8Z0RWPDI/AAAAAAABKtc/-K-IzD1WuiE1xkS0hkog1NSr9PZzFk3RgCLcBGAsYHQ/s320/kertenkelecocuk.png',
    'https://1.bp.blogspot.com/-32ITAH1Ml38/YBq8Z0RWPDI/AAAAAAABKtc/-K-IzD1WuiE1xkS0hkog1NSr9PZzFk3RgCLcBGAsYHQ/s320/kertenkelecocuk.png',
    'https://1.bp.blogspot.com/-st4vPs6W3dQ/YBq8Z7m2IDI/AAAAAAABKtU/sFTJ5Wrzbj0VSdfU9sOUFQrATHI71k2zwCLcBGAsYHQ/s320/kedicocuk.png',
    'https://1.bp.blogspot.com/-st4vPs6W3dQ/YBq8Z7m2IDI/AAAAAAABKtU/sFTJ5Wrzbj0VSdfU9sOUFQrATHI71k2zwCLcBGAsYHQ/s320/kedicocuk.png',
    'https://1.bp.blogspot.com/-eEACBtUQkww/YBq8Z7HSqTI/AAAAAAABKtY/pFxFy8QFEd8Mg_rmA9ms3H4OUXF58zh-wCLcBGAsYHQ/s320/geceninjasi.png',
    'https://1.bp.blogspot.com/-eEACBtUQkww/YBq8Z7HSqTI/AAAAAAABKtY/pFxFy8QFEd8Mg_rmA9ms3H4OUXF58zh-wCLcBGAsYHQ/s320/geceninjasi.png',
    'https://1.bp.blogspot.com/-2J6Zfqd9gpg/YBq8ZcJVxzI/AAAAAAABKtQ/uFQiJIEcW5kyFeRwrmY0P4RhZSgViU2HwCLcBGAsYHQ/s320/baykuskiz.png',
    'https://1.bp.blogspot.com/-2J6Zfqd9gpg/YBq8ZcJVxzI/AAAAAAABKtQ/uFQiJIEcW5kyFeRwrmY0P4RhZSgViU2HwCLcBGAsYHQ/s320/baykuskiz.png',
    'https://1.bp.blogspot.com/-JEGFjUuB4Oc/YBq8ZKdpaSI/AAAAAAABKtE/B3CA2PO13tw1r1LNzw4UTYPsAT-B66xvgCLcBGAsYHQ/s320/aykiz.png',
    'https://1.bp.blogspot.com/-JEGFjUuB4Oc/YBq8ZKdpaSI/AAAAAAABKtE/B3CA2PO13tw1r1LNzw4UTYPsAT-B66xvgCLcBGAsYHQ/s320/aykiz.png',
    'https://1.bp.blogspot.com/-mvTmqHOdR6s/YBq8bka-RqI/AAAAAAABKt0/8uTDLxEmCLoGuNq8L426Pk07nculN4mIwCLcBGAsYHQ/s320/romeo.png',
    'https://1.bp.blogspot.com/-mvTmqHOdR6s/YBq8bka-RqI/AAAAAAABKt0/8uTDLxEmCLoGuNq8L426Pk07nculN4mIwCLcBGAsYHQ/s320/romeo.png',
  ];
}

List getCardAvengers() {
  List<String> levelAndKindList = new List<String>();
  List sourceArray = avengers();

    sourceArray.forEach((element) {
      levelAndKindList.add(element);
    });
  levelAndKindList.shuffle();
  return levelAndKindList;
}

List getCardDisney() {
  List<String> levelAndKindList = new List<String>();
  List sourceArray = disney();
  sourceArray.forEach((element) {
    levelAndKindList.add(element);
  });
  levelAndKindList.shuffle();
  return levelAndKindList;
}

List getCardFrozen() {
  List<String> levelAndKindList = new List<String>();
  List sourceArray = frozen();
  sourceArray.forEach((element) {
    levelAndKindList.add(element);
  });
  levelAndKindList.shuffle();
  return levelAndKindList;
}

List getCardPJ() {
  List<String> levelAndKindList = new List<String>();
  List sourceArray = pjmasks();
  sourceArray.forEach((element) {
    levelAndKindList.add(element);
  });
  levelAndKindList.shuffle();
  return levelAndKindList;
}

List<bool> getInitialItemState(String passData){
  List<bool> initialItemState = new List<bool>();
  if (passData == 'Avengers') {
    for (int i = 0; i < avengers().length; i++) {
      initialItemState.add(true);
    }
  }else if (passData == 'Disney Princess') {
    for (int i = 0; i < disney().length; i++) {
      initialItemState.add(true);
    }
  } else if (passData == 'Frozen') {
    for (int i = 0; i < frozen().length; i++) {
      initialItemState.add(true);
    }
  }else if(passData == 'PJ Masks'){
    for (int i = 0; i < pjmasks().length; i++) {
      initialItemState.add(true);
    }
  }
  return initialItemState;
}

List<GlobalKey<FlipCardState>> getCardStateKeys(String passData) {
  List<GlobalKey<FlipCardState>> cardStateKeys =
  new List<GlobalKey<FlipCardState>>();
  if (passData == 'Avengers') {
    for (int i = 0; i < avengers().length; i++) {
      cardStateKeys.add(GlobalKey<FlipCardState>());
    }
  }else if (passData == 'Disney Princess') {
    for (int i = 0; i < disney().length; i++) {
      cardStateKeys.add(GlobalKey<FlipCardState>());
    }
  } else if (passData == 'Frozen') {
    for (int i = 0; i < frozen().length; i++) {
      cardStateKeys.add(GlobalKey<FlipCardState>());
    }
  }else if(passData == 'PJ Masks'){
    for (int i = 0; i < pjmasks().length; i++) {
      cardStateKeys.add(GlobalKey<FlipCardState>());
    }
  }
  return cardStateKeys;
}
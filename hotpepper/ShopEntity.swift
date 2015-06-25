//
//  ShopEntity.swift
//  hotpepper
//
//  Created by 山口 智生 on 2015/06/25.
//  Copyright (c) 2015年 NextVanguard. All rights reserved.
//

import Foundation

class Shop {
    
    var name: String?
    var photo: (mobile: (l: String?, s: String?), pc: (l: String?, m: String?, s: String?))
    var budget: (average: String?, name: String?, code: String?)
    var genre: (name: String?, catch: String?, code: String?)
    var large_area: (name: String?, code: String?)
}

/*
店データサンプル(json["results"]["shop"][0])

{
"mobile_access" : "JR新宿駅東口徒歩3分 西武新宿駅徒2分",
"catch" : "カラオケ付完全個室 飲み放題付コース1900円～",
"id" : "J000770561",
"tv" : "あり",
"parking" : "なし ：駐車場はございませんので、近隣コインパーキングをご利用下さい♪",
"karaoke" : "あり",
"photo" : {
"mobile" : {
"l" : "http:\/\/imgfp.hotp.jp\/IMGH\/09\/17\/P020240917\/P020240917_168.jpg",
"s" : "http:\/\/imgfp.hotp.jp\/IMGH\/09\/17\/P020240917\/P020240917_100.jpg"
},
"pc" : {
"l" : "http:\/\/imgfp.hotp.jp\/IMGH\/09\/17\/P020240917\/P020240917_238.jpg",
"m" : "http:\/\/imgfp.hotp.jp\/IMGH\/09\/17\/P020240917\/P020240917_168.jpg",
"s" : "http:\/\/imgfp.hotp.jp\/IMGH\/09\/17\/P020240917\/P020240917_58_s.jpg"
}
},
"food" : {
"name" : "洋風創作料理",
"code" : "R029"
},
"genre" : {
"name" : "カラオケ・パーティ",
"catch" : "地域最安値！飲み放題付きコース1800円～♪",
"code" : "G011"
},
"english" : "なし",
"open" : "14:00～翌5:00■営業時間外のご予約・Partyも受付中！20名様以上のご利用であれば10時からOK♪■飲み放題付きコースは1800円～、ご予算・お好みに合わせて多数ご用意！■プロジェクター・大型スクリーン・マイク・カラオケなどご利用可能！",
"close" : "無休■NET予約なら24時間予約受付中です ",
"charter" : "貸切可 ：地域最大級の最大400名様までご利用OK！ご予算やご利用人数など何でもお問い合わせ下さい☆",
"logo_image" : "http:\/\/imgfp.hotp.jp\/SYS\/cmn\/images\/common\/diary\/custom\/m30_img_noimage.gif",
"show" : "なし",
"ktai" : "つながる ：docomo\/au\/softbank\/willcomの通信OKです（一部お席は繋がりにくい所もございます）",
"open_air" : "なし",
"coupon_urls" : {
"mobile" : "http:\/\/hpr.jp\/S\/S511.jsp?SP=J000770561&uid=NULLGWDOCOMO&vos=hpp336",
"sp" : "http:\/\/www.hotpepper.jp\/strJ000770561\/scoupon\/?vos=nhppalsa000016",
"pc" : "http:\/\/www.hotpepper.jp\/strJ000770561\/map\/?vos=nhppalsa000016",
"qr" : "http:\/\/webservice.recruit.co.jp\/common\/qr?url=http%3A%2F%2Fhpr.jp%2FS%2FS511.jsp%3FSP%3DJ000770561%26uid%3DNULLGWDOCOMO%26vos%3Dhpp337"
},
"lng" : "139.7004764829",
"shop_detail_memo" : "貸切の場合は近隣の姉妹店にご案内させて頂く場合もございます。ご予約時、ご確認下さい。",
"address" : "東京都新宿区歌舞伎町２-45-4　与三郎ビル",
"small_area" : {
"name" : "西武新宿",
"code" : "XA04"
},
"name_kana" : "しんじゅくかしきり　ぱーてぃーすぺーす　のも　すりー",
"access" : "JR新宿駅東口徒歩3分　西武新宿駅徒2分（西武新宿線沿い）",
"free_food" : "なし ：食べ放題コースはございませんが、品数やご予算に合わせて多数コースをご用意しております！",
"child" : "お子様連れ歓迎 ：お子様連れのママ会や各種パーティーなども喜んで承ります！お気軽にお問い合わせ下さい！",
"wifi" : "なし",
"band" : "不可",
"non_smoking" : "一部禁煙 ：分煙",
"capacity" : "400",
"lat" : "35.6965428912",
"sommelier" : "いない",
"barrier_free" : "なし ：バリアフリーではありませんが、荷物の持ち運びなどスタッフがご協力させて頂きます♪",
"name" : "Party Space パーティースペース nom 3 ノモスリー",
"tatami" : "なし ：座敷はございませんが広々ゆったりスペースをご用意☆お店まるごと貸切なら周りも気にせずお楽しみ頂けます",
"party_capacity" : "400",
"middle_area" : {
"name" : "新宿",
"code" : "Y055"
},
"service_area" : {
"name" : "東京",
"code" : "SA11"
},
"card" : "利用不可",
"midnight" : "営業している",
"station_name" : "新宿",
"free_drink" : "あり ：ご予算やお好みに合わせてお好きなコースをご利用頂けます☆詳細はクーポンページでご確認下さい♪",
"lunch" : "なし",
"urls" : {
"qr" : "http:\/\/webservice.recruit.co.jp\/common\/qr?url=http%3A%2F%2Fhpr.jp%2FstrJ000770561%2F%3Fuid%3DNULLGWDOCOMO%26vos%3Dhpp337",
"mobile" : "http:\/\/hpr.jp\/strJ000770561\/?uid=NULLGWDOCOMO&vos=hpp336",
"pc" : "http:\/\/www.hotpepper.jp\/strJ000770561\/?vos=nhppalsa000016"
},
"large_area" : {
"name" : "東京",
"code" : "Z011"
},
"large_service_area" : {
"name" : "関東",
"code" : "SS10"
},
"pet" : "不可",
"budget_memo" : "前金制\/年末料金あり\/予約後キャンセルの場合必キャンセル料",
"horigotatsu" : "なし ：掘りごたつはございませんが広々スペースをご用意☆お店まるごと貸切なら周りも気にせずお楽しみ頂けます",
"sub_food" : {
"name" : "洋食全般",
"code" : "R022"
},
"wedding" : "大歓迎です！ご予算や人数、お好みなど何でもご相談ください☆音響設備もばっちりです",
"ktai_coupon" : "0",
"equipment" : "あり",
"other_memo" : "歓迎会や送別会、同窓会やコスプレ…更衣室も貸し出し中／もちろんカラオケも無料！",
"budget" : {
"average" : "2500円",
"name" : "3001～4000円",
"code" : "B003"
},
"sub_genre" : {
"name" : "カラオケS・パーティ",
"code" : "G011"
},
"course" : "あり",
"private_room" : "あり ：個室ももちろんございますが、店舗まるごと貸切などご利用人数に関係なくご利用頂けます☆"
}

*/
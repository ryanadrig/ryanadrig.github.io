import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';


Size ss = Size(0, 0);


Future<void> _launchInBrowser(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw Exception('Could not launch $url');
  }
}


List main_content = [
  {"app_name": "Netra AI",
    "app_short_desc": "Machine Learning Platform",
    "app_long_desc": "Machine learning platform that allows users to train custom computer vision models tailored to their needs",
    "img_link": "assets/images/netra_feature_0.png",
    "app_feats" : [
      "State Management - riverpod",
      "ML Framework - Tensorflow",
      "Local Storage - hive",
      "Database - Firebase",
      "Modeling - freezed"
    ],
    "my_role":[
      "Developer"
    ]
  },
  {"app_name": "Halen",
    "app_short_desc": "Services app",
    "app_long_desc": "Services app offering rideshare, delivery and travel services",
    "img_link": "assets/images/halen_feature_img.png",
    "app_feats" : [
      "State Management - riverpod",
      "Responsive Design - flutter_screenutil",
      "Pagination - infinite_scroll_pagination",
    ],
    "my_role":[
      "Developer"
    ]
  },
  {"app_name": "Silc VPN",
    "app_short_desc": "Mobile VPN",
    "app_long_desc": "Free, easy to use cloud housted secure no log VPN built with openVPN",
    "img_link": "assets/images/silc_vpn_feat_ss.png",
    "app_feats" : [
      "VPN - openvpn_flutter ",
      "Mobile Ads - admob_flutter ",
      "State Management - provider"
    ],
    "my_role":[
      "Designer",
      "Developer"
    ]
  },
  {"app_name": "Skin Cancer Diagnosis",
    "app_short_desc": "AI Skin Diagnosis App",
    "app_long_desc": "Mobile front end for patented AI skin cancer diagnosis neural net",
    "img_link": "assets/images/skin_ai_feat_ss.png",
    "app_feats" : [
      "Auth - firebase_auth",
      "State Management - Bloc",
      "i18n internationalization",
      "Local Storage - shared_preferences",
    ],
    "my_role":[
      "Tester",
      "Developer"
    ]
  },
  {"app_name": "SurfTrader",
    "app_short_desc": "Surfboard Marketplace",
    "app_long_desc": "Mobile surfboard marketplace for finding and selling used and new surfboards",
    "img_link": "assets/images/surftrader_feat_ss.png",
    "app_feats" : [
      "Custom Database Search Indexes",
      "Websocket Messaging - web_socket_channel",
      "Push Notifications - firebase_messaging",
      "Subscriptions - in_app_purchase",
      "Auth - facebook_login / email deep link",
      "Deep links - uni_links"
      "Modeling - json_serializable",
      "background save/restore",
      "State Management - Bloc"
    ],
    "my_role":[
      "Designer",
      "Developer"
    ]
  },
  {
    "app_name": "Celeferamo",
    "app_short_desc": "Doctor's Office Kiosk",
    "app_long_desc": "A patient intake and vitals recording kiosk app for use in a doctor's office",
    "img_link": "data:image/png;base64,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",
    "app_feats" : [
      "i18n internationalization",
      "Auth - firebase_auth",
      "Cloud Storage - firebase_storage",
      "Local Storage - shared_preferences",
      "Navigation - vanilla"
    ],
    "my_role":[
      "Tester",
      "Developer"
    ]
  },
  {
    "app_name": "Calm Ascent",
    "app_short_desc": "Wellness platform",
    "app_long_desc": "A meditation and awareness app for mental health, wellness and life coaching",
    "img_link": "assets/images/calm_asc_feat_ss.png",
    "app_feats" : [
      "firebase_auth",
      "optimized UX Page Transitions",
      "optimized UX Animations",
      "Client Generated Content Management",
      "Subscriptions - in_app_purchase",
      "Modeling - json_serializable",
      "State Management - Inherited State"
    ],
    "my_role":[
      "Tester",
      "Developer"
    ]
  },
  {"app_name": "Netspeed SI",
    "app_short_desc": "Network Test",
    "app_long_desc": "A ping based network speed testing app to measure LAN bandwidth",
    "img_link": "assets/images/netspeed_feat_ss.png",
    "app_feats" : [
      "Network tool - easy_ping",
      "Mobile Ads - admob_flutter"
    ],
    "my_role":[
      "Developer"
    ]
  },


];

Map demo_cont_links = {
  "nft": "https://github.com/ryanadrig/nft_auction_demo/blob/master/nft_out.gif?raw=true",
  "tesla": "https://github.com/ryanadrig/tesla_control_flutter/blob/master/tsla_control.gif?raw=true",
  "coffee": "https://github.com/ryanadrig/flutter_coffee_shop_ui/blob/master/coffee_ui_demo.gif?raw=true",
  "art": "https://github.com/ryanadrig/flttr_art_gallery_ui/blob/master/artui_demo.gif?raw=true",
  "cash": "https://github.com/ryanadrig/mobile_payments_app_interface/blob/master/cashappint_demo.gif?raw=true",
  "youtube": "https://github.com/ryanadrig/youtube_clone/blob/master/yt_clone_out.gif?raw=true",
  "travel": "https://github.com/ryanadrig/travel_app_ui_flutter/blob/master/travel_demo.gif?raw=true"
};

Map demo_cont_map = {
  "coffee": {"name": "Coffee Shop UI"},
  "tesla": {"name": "Tesla Control UI"},
  "nft": {"name": "NFT Auction App"},
  "art": {"name": "Art Store App"},
  "cash": {"name": "Cash App UI"},
  "youtube": {"name": "Youtube Miniplayer Clone"},
  "travel": {"name": "Travel App UI"}
};
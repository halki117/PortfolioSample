var map
var geocoder
var marker = [];
var markerData = gon.locations; // コントローラーで定義したインスタンス変数を変数に代入

function initMap(){
  geocoder = new google.maps.Geocoder()
  // ビューのid='map_index'の部分にGoogleMapを埋め込む
  map = new google.maps.Map(document.getElementById('map_index'), {
    center: { lat: 34.686246 , lng: 135.519865 }, // 東京タワーを中心
    zoom: 9,
  });

  // 繰り返し処理でマーカーと吹き出しを複数表示させる
  for (var i = 0; i < markerData.length; i++) {
    // 各地点の緯度経度を算出
    markerLatLng = new google.maps.LatLng({
      lat: markerData[i]['latitude'],
      lng: markerData[i]['longitude']
    });

    // マーカーの表示
    marker[i] = new google.maps.Marker({
      position: markerLatLng,
      map: map
    });

  }
}

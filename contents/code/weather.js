

function fetch(callback) {
    var xhr = new XMLHttpRequest();
    var url = "https://api.open-meteo.com/v1/forecast?latitude=50.0755&longitude=14.4378&current_weather=true"
    xhr.open("GET", url, true);
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            var response = JSON.parse(xhr.responseText);
            var temp = response.current_weather.temperature;
            callback(temp + " °C");
        } else if (xhr.readyState === 4) {
            callback("Error");
        }
    };
    xhr.send();
}

import { IonicWatchConnectivity } from 'ionic-watch-connectivity';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    IonicWatchConnectivity.echo({ value: inputValue })
}

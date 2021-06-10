///@returns float
/// Returns current game time in seconds (to 2 decimal points of accuracy)
function seconds (mms) {
    if (mms == undefined) mms = get_timer(); //microseconds (1/mil)
    var ms = floor(mms / 10000); //(1/100)
    return (ms / 100);
}
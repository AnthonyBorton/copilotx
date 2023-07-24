function wordReverse(str) {
    var strArray = str.split(" ");
    var newArray = [];
    for (var i = 0; i < strArray.length; i++) {
        newArray.push(strArray[i].split("").reverse().join(""));
    }
    return newArray.join(" ");
}

var sentences = [
    "Hello World",
    "I am a sentence",
    "This is a sentence",
    "This is a sentence",
    "This is a sentence"
]

sentences.forEach((sentence) => console.log(wordReverse(sentence)));
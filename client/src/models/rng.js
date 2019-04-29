class RNG {

  rand(array) {
    return Math.floor(Math.random() * array.length);
  }

  randArray(array) {
    const num = this.rand(array);
    return array[num];
  }

  randNum(max, min) {
    return Math.floor(Math.random() * max) + min;
  }

}

module.exports = RNG;

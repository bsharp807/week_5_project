class RNG {

  rand(array) {
    return Math.floor(Math.random() * array.length);
  }

  randArray(array) {
    const num = this.rand(array);
    return array[num];
  }

}

module.exports = RNG;

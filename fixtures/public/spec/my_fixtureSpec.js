describe("adds elements to the DOM", function() {
  it("should add div element to the DOM ", function(){
    loadFixtures('my_fixture1.html');
    // debugger
    console.log('my_fixture1.html');
    expect($('.span12').length).toEqual(1);
  });

  it("should give us a beautiful picture of some kittens", function() {
    loadFixtures('my_fixturekitten.html');
    // debugger;
    console.log('my_fixturekitten.html');
    expect($('.image').length).toEqual(3);
  });
});

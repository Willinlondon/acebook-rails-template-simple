document.addEventListener('DOMContentLoaded', () => {

  const allLikes = document.querySelectorAll(".like")
  // let like = 0;
  // document.getElementById('like_count').innerText = like
  let like = document.getElementById('like_count').innerText = 0

  // fetch('http://localhost:3000/users')
  //   .then((response) => {
  //     console.log(response)
  //   })
  //   // .then((data) => {
  //   //   console.log(data);
  //   // })


  allLikes.forEach(element => 
    //console.log(element)
    element.addEventListener('submit', () => {
      // event.preventDefault();
      document.getElementById('like_count').innerText = like++
    })
  );
  

})
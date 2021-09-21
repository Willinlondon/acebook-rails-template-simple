console.log('OUTSIDE');

document.addEventListener('DOMContentLoaded', () => {
  console.log('INSIDE');

  const allLikes = document.querySelectorAll(".like")
  // let like = 0;
  // document.getElementById('like_count').innerText = like
  allLikes.forEach(element => 
    //console.log(element)
    element.addEventListener('submit', () => {
      let like = document.getElementById('like_count').innerText = 0
      event.preventDefault();
      console.log(typeof like)
      document.getElementById('like_count').innerText = like++
    })
  );
  

})
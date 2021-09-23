document.addEventListener('DOMContentLoaded', () => {

  const allLikes = document.querySelectorAll(".like")
  // let like = 0;
  // document.getElementById('like_count').innerText = like
  
  
  allLikes.forEach(element => 
    //console.log(element)
    element.addEventListener('submit', () => {
      // event.preventDefault();
      document.getElementById('like_count').innerText = like++
    })
  );
  

})
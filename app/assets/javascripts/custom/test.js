console.log('OUTSIDE');

document.addEventListener('DOMContentLoaded', () => {
  console.log('INSIDE');

  const allLikes = document.querySelectorAll(".like")

  allLikes.forEach(element => 
    //console.log(element)
    element.addEventListener('submit', () => {
      event.preventDefault();
      console.log('I\'ve been clicked')



    })
  );
  
  
  


})
// Simple demo: animate numbers
document.querySelectorAll('.card p').forEach(el => {
  let val = parseInt(el.textContent);
  el.textContent = 0;
  let counter = 0;
  const interval = setInterval(() => {
    counter++;
    el.textContent = counter;
    if(counter >= val) clearInterval(interval);
  }, 50);
});

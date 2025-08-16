const form = document.getElementById('loginForm');
const message = document.getElementById('message');

form.addEventListener('submit', (e) => {
  e.preventDefault();
  const username = document.getElementById('username').value;
  if(username) {
    // Redirect to dashboard (static)
    window.location.href = 'dashboard.html';
  } else {
    message.textContent = 'Enter valid username!';
  }
});

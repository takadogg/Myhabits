function post() {
  const form = document.getElementById("form");
  form.addEventListener("submit", (e) => {
    e.preventDefault();
    const formData = new FormData(form);
    const XHR = new XMLHttpRequest();
    XHR.open("POST", "/habits", true);
    XHR.responseType = "json";
    XHR.send(formData);
    XHR.onload = () => {
      const list = document.getElementById("list");
      const formText = document.getElementById("habit");
      console.log(formText.value);
      const item = XHR.response.habit;
      const evaluation = XHR.response.evaluation;
      const html = `
        <div class="habit">
          <div class="habit-habit">
            ${item.habit}
          </div>
          <div class="habit-evaluation">
            ${evaluation}
          </div>
        </div>`;
      list.insertAdjacentHTML("afterend", html);
    };
  });
};

window.addEventListener('turbo:load', post);

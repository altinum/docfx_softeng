window.onload = () => {
    fetch("questions.json")
        .then(r => r.json())
        .then(d => console.log(d));

};
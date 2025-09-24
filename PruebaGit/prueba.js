const holes = document.querySelectorAll('.hole');
let lastHole;
let timeUp = false;
const hammer = document.getElementById('hammer');

// Crear gatos en cada hoyo
holes.forEach(hole => {
    const cat = document.createElement('img');
    cat.src = 'https://i.imgur.com/5aX6GgC.png'; // Imagen de gato
    cat.classList.add('cat');
    hole.appendChild(cat);

    hole.addEventListener('click', () => {
        if(cat.classList.contains('up')){
            cat.classList.remove('up');
            alert('¡Golpeaste al gato! 🐱');
        }
    });
});

function randomTime(min, max) {
    return Math.round(Math.random() * (max - min) + min);
}

function randomHole(holes) {
    const idx = Math.floor(Math.random() * holes.length);
    const hole = holes[idx];
    if (hole === lastHole) {
        return randomHole(holes);
    }
    lastHole = hole;
    return hole;
}

function peep() {
    const time = randomTime(500, 1500);
    const hole = randomHole(holes);
    const cat = hole.querySelector('.cat');
    cat.classList.add('up');
    setTimeout(() => {
        cat.classList.remove('up');
        if (!timeUp) peep();
    }, time);
}

function startGame() {
    timeUp = false;
    peep();
    setTimeout(() => timeUp = true, 20000); // 20 segundos de juego
}

// Seguimiento del martillo con el ratón
document.addEventListener('mousemove', e => {
    hammer.style.left = e.pageX + 'px';
    hammer.style.top = e.pageY + 'px';
});

startGame();

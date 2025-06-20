function openNav() {
  document.getElementById("mobileNav").style.width = "250px";
  document.getElementById("hamburger").style.display = "none";
}

function closeNav() {
  document.getElementById("mobileNav").style.width = "0";
  document.getElementById("hamburger").style.display = "inline-block";
}

function themeToggle() {
let element = document.body;
        
if ($("body").hasClass("dark")) {
            
if (document.body.contains(document.getElementById('quickreply'))) {
    let ifrm = document.getElementById('quickreply_ifr');
    let doc = ifrm.contentDocument;
    doc.body.innerHTML = doc.body.innerHTML + '<style>body{color:#FFF;}</style>';
    }
if (document.body.contains(document.getElementById('editor'))) {
    let ifrm = document.getElementById('editor_ifr');
    let doc = ifrm.contentDocument;
    doc.body.innerHTML = doc.body.innerHTML + '<style>body{color:#FFF;}</style>';
    }    

    }
    else {
        if (document.body.contains(document.getElementById('quickreply'))) {
            let ifrm = document.getElementById('quickreply_ifr');
            let doc = ifrm.contentDocument;
            doc.body.innerHTML = doc.body.innerHTML + '<style>body{color:#000;}</style>';
            }
        if (document.body.contains(document.getElementById('editor'))) {
            let ifrm = document.getElementById('editor_ifr');
            let doc = ifrm.contentDocument;
            doc.body.innerHTML = doc.body.innerHTML + '<style>body{color:#000;}</style>';
            }
    }}
    
    
function particleToggle() {
particlesJS("particles-js", {
  particles: {
    number: {
      value: 52,
      density: {
        enable: true,
        value_area: 631.3280775270874 } },


    color: {
      value: "#fff" },

    shape: {
      type: "circle",
      stroke: {
        width: 0,
        color: "#000000" },

      polygon: {
        nb_sides: 5 },

      image: {
        src: "img/github.svg",
        width: 100,
        height: 100 } },


    opacity: {
      value: 0.5,
      random: true,
      anim: {
        enable: false,
        speed: 1,
        opacity_min: 0.1,
        sync: false } },


    size: {
      value: 5,
      random: true,
      anim: {
        enable: false,
        speed: 40,
        size_min: 0.1,
        sync: false } },


    line_linked: {
      enable: false,
      distance: 500,
      color: "#ffffff",
      opacity: 0.4,
      width: 2 },

    move: {
      enable: true,
      speed: 1.5,
      direction: "bottom",
      random: false,
      straight: false,
      out_mode: "out",
      bounce: false,
      attract: {
        enable: false,
        rotateX: 600,
        rotateY: 1200 } } },



  interactivity: {
    detect_on: "canvas",
    events: {
      onhover: {
        enable: false,
        mode: "bubble" },

      onclick: {
        enable: true,
        mode: "repulse" },

      resize: true },

    modes: {
      grab: {
        distance: 400,
        line_linked: {
          opacity: 0.5 } },


      bubble: {
        distance: 400,
        size: 4,
        duration: 0.3,
        opacity: 1,
        speed: 3 },

      repulse: {
        distance: 200,
        duration: 0.4 },

      push: {
        particles_nb: 4 },

      remove: {
        particles_nb: 2 } } },



  retina_detect: true });
}
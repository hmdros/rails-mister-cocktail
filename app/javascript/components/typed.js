

import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Would you like a drink?", "Are you a beer person?", "We have it all!"],
    typeSpeed: 60,
    loop: true
  });
};

export { loadDynamicBannerText };

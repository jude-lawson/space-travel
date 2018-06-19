import React from 'react'

import NavButton from './NavButton';
//Let's make header buttons update the state of the page to make the body call the proper resource from the API

const Header = () => {
  return (
    <NavButton name='Spaceports' />
  );
};

export default Header;
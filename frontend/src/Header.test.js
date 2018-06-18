import React from 'react';
import { shallow,mount } from 'enzyme';

import Header from './Header';
import NavLink from './NavLink';

//This test actually just needs to test for buttons, not actual links. The buttons will update the state of the page to render proper data from the API

// describe('Header', () => {
//   it('should render all nav components', () => {
//     const wrapper = mount(<Header />)

//     expect(wrapper.contains(<NavLink name='Spaceports' />)).toEqual(true);
//   });
// });
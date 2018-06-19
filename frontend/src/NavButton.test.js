import React from 'react';
import { shallow,mount } from 'enzyme';

import NavButton from './NavButton';

describe('NavButton', () => {
  it('should render a <button> element with a the appropriate name', () => {
    const wrapper = shallow(<NavButton name='Spaceports' />)

    expect(wrapper.contains(<button className='nav-button'>Spaceports</button>)).toEqual(true);
  });
});
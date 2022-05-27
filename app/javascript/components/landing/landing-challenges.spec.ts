import { shallowMount } from '@vue/test-utils';
import LandingChallenges from './landing-challenges.vue';

describe('LandingChallenges', () => {
  const OLD_ENV = process.env;

  beforeEach(() => {
    jest.resetModules();
    process.env = { ...OLD_ENV };
  });

  afterAll(() => {
    process.env = OLD_ENV;
  });

  describe('show more button', () => {
    describe('when env variable is false', () => {
      test('it hides button', () => {
        process.env.SHOW_MORE_CHALLENGES = 'false';
        const wrapper = shallowMount(LandingChallenges);
        const button = wrapper.find('[test-id="show-more-button"]');
        expect(button.exists()).toBeFalsy();
      });
    });

    describe('when env variable is true', () => {
      test('shows button', () => {
        process.env.SHOW_MORE_CHALLENGES = 'true';
        const wrapper = shallowMount(LandingChallenges);
        const button = wrapper.find('[test-id="show-more-button"]');
        expect(button.exists()).toBeTruthy();
      });
    });
  });
});

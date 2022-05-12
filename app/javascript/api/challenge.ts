import api from './index';

export default {
  get() {
    const path = '/api/internal/challenges';

    return api({
      method: 'get',
      url: path,
    });
  },
};

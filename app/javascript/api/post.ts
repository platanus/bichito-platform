import api from './index';

export default {
  get() {
    const path = '/api/internal/posts';

    return api({
      method: 'get',
      url: path,
    });
  },
};

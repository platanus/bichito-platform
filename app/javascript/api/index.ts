import axios, { type AxiosResponse, type AxiosRequestConfig } from 'axios';
import { camelizeKeys, decamelizeKeys } from 'humps';

const api = axios.create({
  headers: {
    'Content-Type': 'application/json',
  },
});

api.interceptors.response.use((response: AxiosResponse) => {
  if (response.data && response.headers['content-type'] === 'application/json') {
    response.data = camelizeKeys(response.data);
  }

  return response;
});

api.interceptors.request.use((config: AxiosRequestConfig) => {
  const newConfig = { ...config };
  if (newConfig.headers && newConfig.headers['Content-Type'] === 'multipart/form-data') {
    return newConfig;
  }
  if (config.params) {
    newConfig.params = decamelizeKeys(config.params);
  }
  if (config.data) {
    newConfig.data = decamelizeKeys(config.data);
  }

  return newConfig;
});

export default api;

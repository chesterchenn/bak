/**
 * 基于 airbnb 的 eslint 规则，需要安装 eslint 和 eslint-plugin-react
 * @see https://eslint.org
 * @see https://github.com/airbnb/javascript
 * @see https://github.com/yannickcr/eslint-plugin-react
 */
module.exports = {
  "parserOptions": {
    "ecmaFeatures": {
      "jsx": true
    }
  },
  "plugins": [
    "react"
  ],
  "rules": {

    /** 防止 React 被标记为未使用 */
    "react/jsx-uses-react": "error",

    /** 防止将 JSX 中使用的变量标记为未使用  */
    "react/jsx-uses-vars": "error",
  },
};

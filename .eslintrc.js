module.exports = {
  "env": {
    "browser": true,
    "commonjs": true,
    "es6": true,
    "node": true
  },
  "parser": "babel-eslint",
  "extends": "eslint:recommended",
  "parserOptions": {
    "sourceType": "module",
    "ecmaVersion": 7,
    "impliedStrict": true,
    "experimentalObjectRestSpread": true
  },
  "rules": {
    "indent": [
      2,
      2
    ],
    "linebreak-style": [
      2,
      "unix"
    ],
    "quotes": [
      2,
      "single"
    ],
    "semi": [
      2,
      "never"
    ],
    "no-console": [
      0
    ],
    "no-shadow-restricted-names": [
      2
    ],
    "no-unused-vars": [
      1
    ],
    "no-undef": [0],
    "arrow-parens": [1, "as-needed"]
  }
};

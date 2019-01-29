module.exports = {
    extends: [
        'eslint-config-airbnb',
    ],

    ecmaFeatures: {
        jsx: true,
        modules: true,
    },

    env: {
        browser: true,
        es6: true,
        node: true,
    },

    parser: 'babel-eslint',

    rules: {
        'no-undef': 2,
        'id-length': 0,
        'max-len': 0,
        indent: [2, 4, {
            SwitchCase: 1,
        }],

        'brace-style': [
            1,
            'stroustrup',
            {allowSingleLine: true},
        ],

        curly: 2,

        'no-use-before-define': [1, 'nofunc'],
        'no-unused-vars': [2, {args: 'none', ignoreRestSiblings: true }],
        'arrow-body-style': 0,
        // allowShortCircuit allows for these: callback && callback();
        'no-unused-expressions': [2, {allowShortCircuit: true}],
        'object-curly-spacing': 0,

        'react/jsx-boolean-value': 0,
        'react/jsx-indent': 0,
        'react/jsx-indent-props': [2, 4],
        'react/jsx-first-prop-new-line': 0,
        'react/jsx-no-bind': 0,
        'react/no-did-mount-set-state': 0,
        'react/prefer-stateless-function': 0,

        'react/sort-comp': [2, {
            order: [
                'setup',
                'lifecycle',
                'everything-else',
                'render',
            ],
            groups: {
                setup: [
                    'displayName',
                    'propTypes',
                    'contextTypes',
                    'childContextTypes',
                    'mixins',
                    'statics',
                    'defaultProps',
                    'constructor',
                    'getDefaultProps',
                    'getInitialState',
                    'getChildContext',
                ],
                lifecycle: [
                    'componentWillMount',
                    'componentDidMount',
                    'componentWillReceiveProps',
                    'shouldComponentUpdate',
                    'componentWillUpdate',
                    'componentDidUpdate',
                    'componentWillUnmount',
                ],
                render: [
                    '/^render.+$/',
                    'render',
                ],
            },
        }],

        'no-restricted-syntax': [2, 'WithStatement', 'DebuggerStatement'],
    },
};

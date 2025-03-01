pragma solidity 0.8.7;

interface ICurvePool {
    function add_liquidity(
        uint256[3] calldata _amounts,
        uint256 _min_mint_amount,
        bool _use_underlying
    ) external returns (uint256);

    function add_liquidity(
        uint256[5] calldata _amounts,
        uint256 _min_mint_amount,
        bool _use_underlying
    ) external returns (uint256);

    function add_liquidity(uint256[3] calldata _amounts, uint256 _min_mint_amount) external;

    function add_liquidity(uint256[5] calldata _amounts, uint256 _min_mint_amount) external;

    function remove_liquidity_one_coin(
        uint256 _token_amount,
        int128 i,
        uint256 _min_amount,
        bool _use_underlying
    ) external returns (uint256);

    function remove_liquidity_one_coin(
        uint256 _token_amount,
        uint256 i,
        uint256 _min_amount
    ) external;

    function lp_token() external view returns (address);

    function token() external view returns (address);

    function calc_withdraw_one_coin(uint256 _token_amount, int128 i) external view returns (uint256);

    function calc_withdraw_one_coin(uint256 token_amount, uint256 i) external view returns (uint256);

    function calc_token_amount(uint256[3] calldata _amounts, bool is_deposit) external view returns (uint256);

    function calc_token_amount(uint256[5] calldata _amounts, bool is_deposit) external view returns (uint256);

    function underlying_coins(uint256 arg0) external view returns (address);
}

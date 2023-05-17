let board = [
    [ "_", "_", "_" ],
    [ "_", "_", "_" ],
    [ "_", "_", "_" ]
  ];
  
let player = "x";
const bordFunc = function(board) {
	return board[0].join("   ") + 
       "\n" + 
       board[1].join("   ") +
       "\n" +
       board[2].join("   ");
};

let StepToWin = function(board, player) {
// Check rows  
    if(board[0][0] === player && board[0][1] === player && board[0][2] === player) {
        return true;
    }else if(board[1][0] === player && board[1][1] === player && board[1][2] === player) {
        return true;
    }else if(board[2][0] === player && board[2][1] === player && board[2][2] === player) {
        return true;
    }
// Check columns  
    if(board[0][0] === player && board[1][0] === player && board[2][0] === player) {
        return true;
    }else if(board[0][1] === player && board[1][1] === player && board[2][1] === player) {
        return true;
    }else if(board[0][2] === player && board[1][2] === player && board[2][2] === player) {
        return true;
    } 
// Check diagonal 
    if(board[0][0] === player && board[1][1] === player && board[2][2] === player) {
        return true;
    }else if(board[0][2] === player && board[1][1] === player && board[2][0] === player) {
        return true;
    }  
return false;
};
// Check full board
let isFull = function(board) {
    for(let i = 0; i<board.length; i++){
        const row = board[i];
        for (let j = 0; j<board.length; j++){
            if(row[j] === "_") {
                return false;
            }
        }
    }
  
return true;
};

while(true) {
    let boardGame = bordFunc(board);   
    let row = +prompt("Enter the value for the row (0-2) \n\n"+boardGame);
    let column = +prompt("Enter the value for the column (0-2) \n\n"+boardGame);
  
    if(board[row][column] !== "_") {
        alert("Not a legal move, LOSE!. Game over!!!");
    break;
    }

board[row][column] = player;
const won = StepToWin(board, player);
    if(won) {
        alert("Player " + player +" WON!");
    break;
    }
    if(isFull(board)) {
        alert("The board is full, NOBODY WON((");
    break;
    }
  
    if(player === "x") {
        player = "o";
    } else {
        player = "x";
    }
}

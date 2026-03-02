int [][] board = {
  { 0, 0, 0, 9, 0, 7, 1, 0, 6 },
  { 0, 0, 0, 0, 0, 0, 5, 3, 0 },
  { 0, 0, 0, 0, 0, 6, 0, 0, 0 },
  { 3, 0, 5, 0, 0, 0, 0, 0, 0 },
  { 9, 0, 0, 0, 0, 3, 4, 0, 2 },
  { 7, 6, 0, 0, 0, 0, 0, 0, 0 },
  { 0, 1, 3, 0, 0, 4, 0, 0, 0 },
  { 0, 0, 2, 5, 0, 0, 8, 0, 0 },
  { 0, 0, 0, 6, 2, 0, 0, 0, 0 }

};

int CellSize= 60;
int SelectedRow= -1;
int SelectedColumn = -1;

void setup(){
size(540, 540);
textSize(32);
textAlign(CENTER,CENTER);
}
void draw(){
  background(#A01D1D);
  drawGrid();
}
    void drawGrid() {
    for (int r=0; r<9; r++) {
      for (int c=0; c<9; c++) {
        int x = c* CellSize;
        int y = r* CellSize;

        if (r== SelectedRow && c== SelectedColumn) {
        }else {  
          
         fill(255);
        }
        
        stroke(200);
        rect(x,y,CellSize,CellSize);
        if(board[r][c] !=0){
          fill(0);
          text(board[r][c],x + CellSize/2,y + CellSize/2);
        }
      }
    }
    strokeWeight(3); 
    stroke(0);
    for(int i=0; i<=9; i+=3){
     line(i * CellSize, 0, i * CellSize, height);
     line(0, i * CellSize, width, i * CellSize);
    }
    strokeWeight(1);
    }
  void mousePressed(){
 
 SelectedColumn = mouseX/CellSize;
 SelectedRow = mouseY/CellSize;
  }
  
  void keyPressed(){
    if(SelectedRow !=-1 && key >= '1' && key <= '9'){
      int val = key - '0';
      if(isSafe(board, SelectedRow, SelectedColumn, val)){
        board[SelectedRow][SelectedColumn]=val;
      } else if(key == BACKSPACE || key == DELETE){
    board[SelectedRow][SelectedColumn]= 0;   
      }
    }
  }
 boolean isSafe(int[][] num, int row, int col, int val){
  for(int x = 0; x < 9; x++){
    if(num[row][x] == val || num[x][col] == val) return false;
  } 
  int startRow = row - (row % 3);
  int startCol = col - (col % 3);
  for (int i = 0; i < 3; i++){
    for(int j = 0; j<3; j++){
      if(num[i+ startRow][j+ startCol] == val) returnfalse;
    }
  }
  return true;
 }

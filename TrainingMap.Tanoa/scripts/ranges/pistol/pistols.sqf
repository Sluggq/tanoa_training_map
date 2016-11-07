_targets = [pTar1,pTar2,pTar3,pTar4];

{
_x animate["bottom_rotate", 0];
_x animate["target_bottom_rotate", 0];
} forEach _targets;

sleep 2;

{
_x animate["bottom_rotate", 1];
_x animate["target_bottom_rotate", 1];
} forEach _targets;

sleep 2;

pTar1 animate["bottom_rotate", 0];
pTar1 animate["target_bottom_rotate", 0];

sleep 2;

pTar1 animate["bottom_rotate", 1];
pTar1 animate["target_bottom_rotate", 1];
pTar2 animate["bottom_rotate", 0];
pTar2 animate["target_bottom_rotate", 0];

sleep 2;

pTar2 animate["bottom_rotate", 1];
pTar2 animate["target_bottom_rotate", 1];
pTar3 animate["bottom_rotate", 0];
pTar3 animate["target_bottom_rotate", 0];

sleep 2;

pTar3 animate["bottom_rotate", 1];
pTar3 animate["target_bottom_rotate", 1];
pTar4 animate["bottom_rotate", 0];
pTar4 animate["target_bottom_rotate", 0];

sleep 2;

pTar4 animate["bottom_rotate", 1];
pTar4 animate["target_bottom_rotate", 1];
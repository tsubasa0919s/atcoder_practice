int stirling2( int n, int k ) { 
if ( k == 0 ) {
return 0;
}
else {
if ( k == 1 || k == n ) {
return 1;
}
else {
return ( k * stirling2( n - 1, k ) + stirling2( n - 1, k - 1 ) );
}
}
}
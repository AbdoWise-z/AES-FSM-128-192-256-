
module aes_sbox(
                input wire [31 : 0]  sboxw,
                output wire [31 : 0] new_sboxw
               );


  //----------------------------------------------------------------
  // The sbox array.
  //----------------------------------------------------------------
  wire [7 : 0] sbox [0 : 255];


  //----------------------------------------------------------------
  // Four parallel muxes.
  //----------------------------------------------------------------
  assign new_sboxw[31 : 24] = sbox[sboxw[31 : 24]];
  assign new_sboxw[23 : 16] = sbox[sboxw[23 : 16]];
  assign new_sboxw[15 : 08] = sbox[sboxw[15 : 08]];
  assign new_sboxw[07 : 00] = sbox[sboxw[07 : 00]];


  //----------------------------------------------------------------
  // Creating the sbox array contents.
  //----------------------------------------------------------------
  assign sbox[8'h00] = 8'h63;
  assign sbox[8'h01] = 8'h7c;
  assign sbox[8'h02] = 8'h77;
  assign sbox[8'h03] = 8'h7b;
  assign sbox[8'h04] = 8'hf2;
  assign sbox[8'h05] = 8'h6b;
  assign sbox[8'h06] = 8'h6f;
  assign sbox[8'h07] = 8'hc5;
  assign sbox[8'h08] = 8'h30;
  assign sbox[8'h09] = 8'h01;
  assign sbox[8'h0a] = 8'h67;
  assign sbox[8'h0b] = 8'h2b;
  assign sbox[8'h0c] = 8'hfe;
  assign sbox[8'h0d] = 8'hd7;
  assign sbox[8'h0e] = 8'hab;
  assign sbox[8'h0f] = 8'h76;
  assign sbox[8'h10] = 8'hca;
  assign sbox[8'h11] = 8'h82;
  assign sbox[8'h12] = 8'hc9;
  assign sbox[8'h13] = 8'h7d;
  assign sbox[8'h14] = 8'hfa;
  assign sbox[8'h15] = 8'h59;
  assign sbox[8'h16] = 8'h47;
  assign sbox[8'h17] = 8'hf0;
  assign sbox[8'h18] = 8'had;
  assign sbox[8'h19] = 8'hd4;
  assign sbox[8'h1a] = 8'ha2;
  assign sbox[8'h1b] = 8'haf;
  assign sbox[8'h1c] = 8'h9c;
  assign sbox[8'h1d] = 8'ha4;
  assign sbox[8'h1e] = 8'h72;
  assign sbox[8'h1f] = 8'hc0;
  assign sbox[8'h20] = 8'hb7;
  assign sbox[8'h21] = 8'hfd;
  assign sbox[8'h22] = 8'h93;
  assign sbox[8'h23] = 8'h26;
  assign sbox[8'h24] = 8'h36;
  assign sbox[8'h25] = 8'h3f;
  assign sbox[8'h26] = 8'hf7;
  assign sbox[8'h27] = 8'hcc;
  assign sbox[8'h28] = 8'h34;
  assign sbox[8'h29] = 8'ha5;
  assign sbox[8'h2a] = 8'he5;
  assign sbox[8'h2b] = 8'hf1;
  assign sbox[8'h2c] = 8'h71;
  assign sbox[8'h2d] = 8'hd8;
  assign sbox[8'h2e] = 8'h31;
  assign sbox[8'h2f] = 8'h15;
  assign sbox[8'h30] = 8'h04;
  assign sbox[8'h31] = 8'hc7;
  assign sbox[8'h32] = 8'h23;
  assign sbox[8'h33] = 8'hc3;
  assign sbox[8'h34] = 8'h18;
  assign sbox[8'h35] = 8'h96;
  assign sbox[8'h36] = 8'h05;
  assign sbox[8'h37] = 8'h9a;
  assign sbox[8'h38] = 8'h07;
  assign sbox[8'h39] = 8'h12;
  assign sbox[8'h3a] = 8'h80;
  assign sbox[8'h3b] = 8'he2;
  assign sbox[8'h3c] = 8'heb;
  assign sbox[8'h3d] = 8'h27;
  assign sbox[8'h3e] = 8'hb2;
  assign sbox[8'h3f] = 8'h75;
  assign sbox[8'h40] = 8'h09;
  assign sbox[8'h41] = 8'h83;
  assign sbox[8'h42] = 8'h2c;
  assign sbox[8'h43] = 8'h1a;
  assign sbox[8'h44] = 8'h1b;
  assign sbox[8'h45] = 8'h6e;
  assign sbox[8'h46] = 8'h5a;
  assign sbox[8'h47] = 8'ha0;
  assign sbox[8'h48] = 8'h52;
  assign sbox[8'h49] = 8'h3b;
  assign sbox[8'h4a] = 8'hd6;
  assign sbox[8'h4b] = 8'hb3;
  assign sbox[8'h4c] = 8'h29;
  assign sbox[8'h4d] = 8'he3;
  assign sbox[8'h4e] = 8'h2f;
  assign sbox[8'h4f] = 8'h84;
  assign sbox[8'h50] = 8'h53;
  assign sbox[8'h51] = 8'hd1;
  assign sbox[8'h52] = 8'h00;
  assign sbox[8'h53] = 8'hed;
  assign sbox[8'h54] = 8'h20;
  assign sbox[8'h55] = 8'hfc;
  assign sbox[8'h56] = 8'hb1;
  assign sbox[8'h57] = 8'h5b;
  assign sbox[8'h58] = 8'h6a;
  assign sbox[8'h59] = 8'hcb;
  assign sbox[8'h5a] = 8'hbe;
  assign sbox[8'h5b] = 8'h39;
  assign sbox[8'h5c] = 8'h4a;
  assign sbox[8'h5d] = 8'h4c;
  assign sbox[8'h5e] = 8'h58;
  assign sbox[8'h5f] = 8'hcf;
  assign sbox[8'h60] = 8'hd0;
  assign sbox[8'h61] = 8'hef;
  assign sbox[8'h62] = 8'haa;
  assign sbox[8'h63] = 8'hfb;
  assign sbox[8'h64] = 8'h43;
  assign sbox[8'h65] = 8'h4d;
  assign sbox[8'h66] = 8'h33;
  assign sbox[8'h67] = 8'h85;
  assign sbox[8'h68] = 8'h45;
  assign sbox[8'h69] = 8'hf9;
  assign sbox[8'h6a] = 8'h02;
  assign sbox[8'h6b] = 8'h7f;
  assign sbox[8'h6c] = 8'h50;
  assign sbox[8'h6d] = 8'h3c;
  assign sbox[8'h6e] = 8'h9f;
  assign sbox[8'h6f] = 8'ha8;
  assign sbox[8'h70] = 8'h51;
  assign sbox[8'h71] = 8'ha3;
  assign sbox[8'h72] = 8'h40;
  assign sbox[8'h73] = 8'h8f;
  assign sbox[8'h74] = 8'h92;
  assign sbox[8'h75] = 8'h9d;
  assign sbox[8'h76] = 8'h38;
  assign sbox[8'h77] = 8'hf5;
  assign sbox[8'h78] = 8'hbc;
  assign sbox[8'h79] = 8'hb6;
  assign sbox[8'h7a] = 8'hda;
  assign sbox[8'h7b] = 8'h21;
  assign sbox[8'h7c] = 8'h10;
  assign sbox[8'h7d] = 8'hff;
  assign sbox[8'h7e] = 8'hf3;
  assign sbox[8'h7f] = 8'hd2;
  assign sbox[8'h80] = 8'hcd;
  assign sbox[8'h81] = 8'h0c;
  assign sbox[8'h82] = 8'h13;
  assign sbox[8'h83] = 8'hec;
  assign sbox[8'h84] = 8'h5f;
  assign sbox[8'h85] = 8'h97;
  assign sbox[8'h86] = 8'h44;
  assign sbox[8'h87] = 8'h17;
  assign sbox[8'h88] = 8'hc4;
  assign sbox[8'h89] = 8'ha7;
  assign sbox[8'h8a] = 8'h7e;
  assign sbox[8'h8b] = 8'h3d;
  assign sbox[8'h8c] = 8'h64;
  assign sbox[8'h8d] = 8'h5d;
  assign sbox[8'h8e] = 8'h19;
  assign sbox[8'h8f] = 8'h73;
  assign sbox[8'h90] = 8'h60;
  assign sbox[8'h91] = 8'h81;
  assign sbox[8'h92] = 8'h4f;
  assign sbox[8'h93] = 8'hdc;
  assign sbox[8'h94] = 8'h22;
  assign sbox[8'h95] = 8'h2a;
  assign sbox[8'h96] = 8'h90;
  assign sbox[8'h97] = 8'h88;
  assign sbox[8'h98] = 8'h46;
  assign sbox[8'h99] = 8'hee;
  assign sbox[8'h9a] = 8'hb8;
  assign sbox[8'h9b] = 8'h14;
  assign sbox[8'h9c] = 8'hde;
  assign sbox[8'h9d] = 8'h5e;
  assign sbox[8'h9e] = 8'h0b;
  assign sbox[8'h9f] = 8'hdb;
  assign sbox[8'ha0] = 8'he0;
  assign sbox[8'ha1] = 8'h32;
  assign sbox[8'ha2] = 8'h3a;
  assign sbox[8'ha3] = 8'h0a;
  assign sbox[8'ha4] = 8'h49;
  assign sbox[8'ha5] = 8'h06;
  assign sbox[8'ha6] = 8'h24;
  assign sbox[8'ha7] = 8'h5c;
  assign sbox[8'ha8] = 8'hc2;
  assign sbox[8'ha9] = 8'hd3;
  assign sbox[8'haa] = 8'hac;
  assign sbox[8'hab] = 8'h62;
  assign sbox[8'hac] = 8'h91;
  assign sbox[8'had] = 8'h95;
  assign sbox[8'hae] = 8'he4;
  assign sbox[8'haf] = 8'h79;
  assign sbox[8'hb0] = 8'he7;
  assign sbox[8'hb1] = 8'hc8;
  assign sbox[8'hb2] = 8'h37;
  assign sbox[8'hb3] = 8'h6d;
  assign sbox[8'hb4] = 8'h8d;
  assign sbox[8'hb5] = 8'hd5;
  assign sbox[8'hb6] = 8'h4e;
  assign sbox[8'hb7] = 8'ha9;
  assign sbox[8'hb8] = 8'h6c;
  assign sbox[8'hb9] = 8'h56;
  assign sbox[8'hba] = 8'hf4;
  assign sbox[8'hbb] = 8'hea;
  assign sbox[8'hbc] = 8'h65;
  assign sbox[8'hbd] = 8'h7a;
  assign sbox[8'hbe] = 8'hae;
  assign sbox[8'hbf] = 8'h08;
  assign sbox[8'hc0] = 8'hba;
  assign sbox[8'hc1] = 8'h78;
  assign sbox[8'hc2] = 8'h25;
  assign sbox[8'hc3] = 8'h2e;
  assign sbox[8'hc4] = 8'h1c;
  assign sbox[8'hc5] = 8'ha6;
  assign sbox[8'hc6] = 8'hb4;
  assign sbox[8'hc7] = 8'hc6;
  assign sbox[8'hc8] = 8'he8;
  assign sbox[8'hc9] = 8'hdd;
  assign sbox[8'hca] = 8'h74;
  assign sbox[8'hcb] = 8'h1f;
  assign sbox[8'hcc] = 8'h4b;
  assign sbox[8'hcd] = 8'hbd;
  assign sbox[8'hce] = 8'h8b;
  assign sbox[8'hcf] = 8'h8a;
  assign sbox[8'hd0] = 8'h70;
  assign sbox[8'hd1] = 8'h3e;
  assign sbox[8'hd2] = 8'hb5;
  assign sbox[8'hd3] = 8'h66;
  assign sbox[8'hd4] = 8'h48;
  assign sbox[8'hd5] = 8'h03;
  assign sbox[8'hd6] = 8'hf6;
  assign sbox[8'hd7] = 8'h0e;
  assign sbox[8'hd8] = 8'h61;
  assign sbox[8'hd9] = 8'h35;
  assign sbox[8'hda] = 8'h57;
  assign sbox[8'hdb] = 8'hb9;
  assign sbox[8'hdc] = 8'h86;
  assign sbox[8'hdd] = 8'hc1;
  assign sbox[8'hde] = 8'h1d;
  assign sbox[8'hdf] = 8'h9e;
  assign sbox[8'he0] = 8'he1;
  assign sbox[8'he1] = 8'hf8;
  assign sbox[8'he2] = 8'h98;
  assign sbox[8'he3] = 8'h11;
  assign sbox[8'he4] = 8'h69;
  assign sbox[8'he5] = 8'hd9;
  assign sbox[8'he6] = 8'h8e;
  assign sbox[8'he7] = 8'h94;
  assign sbox[8'he8] = 8'h9b;
  assign sbox[8'he9] = 8'h1e;
  assign sbox[8'hea] = 8'h87;
  assign sbox[8'heb] = 8'he9;
  assign sbox[8'hec] = 8'hce;
  assign sbox[8'hed] = 8'h55;
  assign sbox[8'hee] = 8'h28;
  assign sbox[8'hef] = 8'hdf;
  assign sbox[8'hf0] = 8'h8c;
  assign sbox[8'hf1] = 8'ha1;
  assign sbox[8'hf2] = 8'h89;
  assign sbox[8'hf3] = 8'h0d;
  assign sbox[8'hf4] = 8'hbf;
  assign sbox[8'hf5] = 8'he6;
  assign sbox[8'hf6] = 8'h42;
  assign sbox[8'hf7] = 8'h68;
  assign sbox[8'hf8] = 8'h41;
  assign sbox[8'hf9] = 8'h99;
  assign sbox[8'hfa] = 8'h2d;
  assign sbox[8'hfb] = 8'h0f;
  assign sbox[8'hfc] = 8'hb0;
  assign sbox[8'hfd] = 8'h54;
  assign sbox[8'hfe] = 8'hbb;
  assign sbox[8'hff] = 8'h16;

endmodule // aes_sbox

module aes_inv_sbox(
                    input wire  [31 : 0] sboxw,
                    output wire [31 : 0] new_sboxw
                   );


  //----------------------------------------------------------------
  // The inverse sbox array.
  //----------------------------------------------------------------
  wire [7 : 0] inv_sbox [0 : 255];


  //----------------------------------------------------------------
  // Four parallel muxes.
  //----------------------------------------------------------------
  assign new_sboxw[31 : 24] = inv_sbox[sboxw[31 : 24]];
  assign new_sboxw[23 : 16] = inv_sbox[sboxw[23 : 16]];
  assign new_sboxw[15 : 08] = inv_sbox[sboxw[15 : 08]];
  assign new_sboxw[07 : 00] = inv_sbox[sboxw[07 : 00]];


  //----------------------------------------------------------------
  // Creating the contents of the array.
  //----------------------------------------------------------------
  assign inv_sbox[8'h00] = 8'h52;
  assign inv_sbox[8'h01] = 8'h09;
  assign inv_sbox[8'h02] = 8'h6a;
  assign inv_sbox[8'h03] = 8'hd5;
  assign inv_sbox[8'h04] = 8'h30;
  assign inv_sbox[8'h05] = 8'h36;
  assign inv_sbox[8'h06] = 8'ha5;
  assign inv_sbox[8'h07] = 8'h38;
  assign inv_sbox[8'h08] = 8'hbf;
  assign inv_sbox[8'h09] = 8'h40;
  assign inv_sbox[8'h0a] = 8'ha3;
  assign inv_sbox[8'h0b] = 8'h9e;
  assign inv_sbox[8'h0c] = 8'h81;
  assign inv_sbox[8'h0d] = 8'hf3;
  assign inv_sbox[8'h0e] = 8'hd7;
  assign inv_sbox[8'h0f] = 8'hfb;
  assign inv_sbox[8'h10] = 8'h7c;
  assign inv_sbox[8'h11] = 8'he3;
  assign inv_sbox[8'h12] = 8'h39;
  assign inv_sbox[8'h13] = 8'h82;
  assign inv_sbox[8'h14] = 8'h9b;
  assign inv_sbox[8'h15] = 8'h2f;
  assign inv_sbox[8'h16] = 8'hff;
  assign inv_sbox[8'h17] = 8'h87;
  assign inv_sbox[8'h18] = 8'h34;
  assign inv_sbox[8'h19] = 8'h8e;
  assign inv_sbox[8'h1a] = 8'h43;
  assign inv_sbox[8'h1b] = 8'h44;
  assign inv_sbox[8'h1c] = 8'hc4;
  assign inv_sbox[8'h1d] = 8'hde;
  assign inv_sbox[8'h1e] = 8'he9;
  assign inv_sbox[8'h1f] = 8'hcb;
  assign inv_sbox[8'h20] = 8'h54;
  assign inv_sbox[8'h21] = 8'h7b;
  assign inv_sbox[8'h22] = 8'h94;
  assign inv_sbox[8'h23] = 8'h32;
  assign inv_sbox[8'h24] = 8'ha6;
  assign inv_sbox[8'h25] = 8'hc2;
  assign inv_sbox[8'h26] = 8'h23;
  assign inv_sbox[8'h27] = 8'h3d;
  assign inv_sbox[8'h28] = 8'hee;
  assign inv_sbox[8'h29] = 8'h4c;
  assign inv_sbox[8'h2a] = 8'h95;
  assign inv_sbox[8'h2b] = 8'h0b;
  assign inv_sbox[8'h2c] = 8'h42;
  assign inv_sbox[8'h2d] = 8'hfa;
  assign inv_sbox[8'h2e] = 8'hc3;
  assign inv_sbox[8'h2f] = 8'h4e;
  assign inv_sbox[8'h30] = 8'h08;
  assign inv_sbox[8'h31] = 8'h2e;
  assign inv_sbox[8'h32] = 8'ha1;
  assign inv_sbox[8'h33] = 8'h66;
  assign inv_sbox[8'h34] = 8'h28;
  assign inv_sbox[8'h35] = 8'hd9;
  assign inv_sbox[8'h36] = 8'h24;
  assign inv_sbox[8'h37] = 8'hb2;
  assign inv_sbox[8'h38] = 8'h76;
  assign inv_sbox[8'h39] = 8'h5b;
  assign inv_sbox[8'h3a] = 8'ha2;
  assign inv_sbox[8'h3b] = 8'h49;
  assign inv_sbox[8'h3c] = 8'h6d;
  assign inv_sbox[8'h3d] = 8'h8b;
  assign inv_sbox[8'h3e] = 8'hd1;
  assign inv_sbox[8'h3f] = 8'h25;
  assign inv_sbox[8'h40] = 8'h72;
  assign inv_sbox[8'h41] = 8'hf8;
  assign inv_sbox[8'h42] = 8'hf6;
  assign inv_sbox[8'h43] = 8'h64;
  assign inv_sbox[8'h44] = 8'h86;
  assign inv_sbox[8'h45] = 8'h68;
  assign inv_sbox[8'h46] = 8'h98;
  assign inv_sbox[8'h47] = 8'h16;
  assign inv_sbox[8'h48] = 8'hd4;
  assign inv_sbox[8'h49] = 8'ha4;
  assign inv_sbox[8'h4a] = 8'h5c;
  assign inv_sbox[8'h4b] = 8'hcc;
  assign inv_sbox[8'h4c] = 8'h5d;
  assign inv_sbox[8'h4d] = 8'h65;
  assign inv_sbox[8'h4e] = 8'hb6;
  assign inv_sbox[8'h4f] = 8'h92;
  assign inv_sbox[8'h50] = 8'h6c;
  assign inv_sbox[8'h51] = 8'h70;
  assign inv_sbox[8'h52] = 8'h48;
  assign inv_sbox[8'h53] = 8'h50;
  assign inv_sbox[8'h54] = 8'hfd;
  assign inv_sbox[8'h55] = 8'hed;
  assign inv_sbox[8'h56] = 8'hb9;
  assign inv_sbox[8'h57] = 8'hda;
  assign inv_sbox[8'h58] = 8'h5e;
  assign inv_sbox[8'h59] = 8'h15;
  assign inv_sbox[8'h5a] = 8'h46;
  assign inv_sbox[8'h5b] = 8'h57;
  assign inv_sbox[8'h5c] = 8'ha7;
  assign inv_sbox[8'h5d] = 8'h8d;
  assign inv_sbox[8'h5e] = 8'h9d;
  assign inv_sbox[8'h5f] = 8'h84;
  assign inv_sbox[8'h60] = 8'h90;
  assign inv_sbox[8'h61] = 8'hd8;
  assign inv_sbox[8'h62] = 8'hab;
  assign inv_sbox[8'h63] = 8'h00;
  assign inv_sbox[8'h64] = 8'h8c;
  assign inv_sbox[8'h65] = 8'hbc;
  assign inv_sbox[8'h66] = 8'hd3;
  assign inv_sbox[8'h67] = 8'h0a;
  assign inv_sbox[8'h68] = 8'hf7;
  assign inv_sbox[8'h69] = 8'he4;
  assign inv_sbox[8'h6a] = 8'h58;
  assign inv_sbox[8'h6b] = 8'h05;
  assign inv_sbox[8'h6c] = 8'hb8;
  assign inv_sbox[8'h6d] = 8'hb3;
  assign inv_sbox[8'h6e] = 8'h45;
  assign inv_sbox[8'h6f] = 8'h06;
  assign inv_sbox[8'h70] = 8'hd0;
  assign inv_sbox[8'h71] = 8'h2c;
  assign inv_sbox[8'h72] = 8'h1e;
  assign inv_sbox[8'h73] = 8'h8f;
  assign inv_sbox[8'h74] = 8'hca;
  assign inv_sbox[8'h75] = 8'h3f;
  assign inv_sbox[8'h76] = 8'h0f;
  assign inv_sbox[8'h77] = 8'h02;
  assign inv_sbox[8'h78] = 8'hc1;
  assign inv_sbox[8'h79] = 8'haf;
  assign inv_sbox[8'h7a] = 8'hbd;
  assign inv_sbox[8'h7b] = 8'h03;
  assign inv_sbox[8'h7c] = 8'h01;
  assign inv_sbox[8'h7d] = 8'h13;
  assign inv_sbox[8'h7e] = 8'h8a;
  assign inv_sbox[8'h7f] = 8'h6b;
  assign inv_sbox[8'h80] = 8'h3a;
  assign inv_sbox[8'h81] = 8'h91;
  assign inv_sbox[8'h82] = 8'h11;
  assign inv_sbox[8'h83] = 8'h41;
  assign inv_sbox[8'h84] = 8'h4f;
  assign inv_sbox[8'h85] = 8'h67;
  assign inv_sbox[8'h86] = 8'hdc;
  assign inv_sbox[8'h87] = 8'hea;
  assign inv_sbox[8'h88] = 8'h97;
  assign inv_sbox[8'h89] = 8'hf2;
  assign inv_sbox[8'h8a] = 8'hcf;
  assign inv_sbox[8'h8b] = 8'hce;
  assign inv_sbox[8'h8c] = 8'hf0;
  assign inv_sbox[8'h8d] = 8'hb4;
  assign inv_sbox[8'h8e] = 8'he6;
  assign inv_sbox[8'h8f] = 8'h73;
  assign inv_sbox[8'h90] = 8'h96;
  assign inv_sbox[8'h91] = 8'hac;
  assign inv_sbox[8'h92] = 8'h74;
  assign inv_sbox[8'h93] = 8'h22;
  assign inv_sbox[8'h94] = 8'he7;
  assign inv_sbox[8'h95] = 8'had;
  assign inv_sbox[8'h96] = 8'h35;
  assign inv_sbox[8'h97] = 8'h85;
  assign inv_sbox[8'h98] = 8'he2;
  assign inv_sbox[8'h99] = 8'hf9;
  assign inv_sbox[8'h9a] = 8'h37;
  assign inv_sbox[8'h9b] = 8'he8;
  assign inv_sbox[8'h9c] = 8'h1c;
  assign inv_sbox[8'h9d] = 8'h75;
  assign inv_sbox[8'h9e] = 8'hdf;
  assign inv_sbox[8'h9f] = 8'h6e;
  assign inv_sbox[8'ha0] = 8'h47;
  assign inv_sbox[8'ha1] = 8'hf1;
  assign inv_sbox[8'ha2] = 8'h1a;
  assign inv_sbox[8'ha3] = 8'h71;
  assign inv_sbox[8'ha4] = 8'h1d;
  assign inv_sbox[8'ha5] = 8'h29;
  assign inv_sbox[8'ha6] = 8'hc5;
  assign inv_sbox[8'ha7] = 8'h89;
  assign inv_sbox[8'ha8] = 8'h6f;
  assign inv_sbox[8'ha9] = 8'hb7;
  assign inv_sbox[8'haa] = 8'h62;
  assign inv_sbox[8'hab] = 8'h0e;
  assign inv_sbox[8'hac] = 8'haa;
  assign inv_sbox[8'had] = 8'h18;
  assign inv_sbox[8'hae] = 8'hbe;
  assign inv_sbox[8'haf] = 8'h1b;
  assign inv_sbox[8'hb0] = 8'hfc;
  assign inv_sbox[8'hb1] = 8'h56;
  assign inv_sbox[8'hb2] = 8'h3e;
  assign inv_sbox[8'hb3] = 8'h4b;
  assign inv_sbox[8'hb4] = 8'hc6;
  assign inv_sbox[8'hb5] = 8'hd2;
  assign inv_sbox[8'hb6] = 8'h79;
  assign inv_sbox[8'hb7] = 8'h20;
  assign inv_sbox[8'hb8] = 8'h9a;
  assign inv_sbox[8'hb9] = 8'hdb;
  assign inv_sbox[8'hba] = 8'hc0;
  assign inv_sbox[8'hbb] = 8'hfe;
  assign inv_sbox[8'hbc] = 8'h78;
  assign inv_sbox[8'hbd] = 8'hcd;
  assign inv_sbox[8'hbe] = 8'h5a;
  assign inv_sbox[8'hbf] = 8'hf4;
  assign inv_sbox[8'hc0] = 8'h1f;
  assign inv_sbox[8'hc1] = 8'hdd;
  assign inv_sbox[8'hc2] = 8'ha8;
  assign inv_sbox[8'hc3] = 8'h33;
  assign inv_sbox[8'hc4] = 8'h88;
  assign inv_sbox[8'hc5] = 8'h07;
  assign inv_sbox[8'hc6] = 8'hc7;
  assign inv_sbox[8'hc7] = 8'h31;
  assign inv_sbox[8'hc8] = 8'hb1;
  assign inv_sbox[8'hc9] = 8'h12;
  assign inv_sbox[8'hca] = 8'h10;
  assign inv_sbox[8'hcb] = 8'h59;
  assign inv_sbox[8'hcc] = 8'h27;
  assign inv_sbox[8'hcd] = 8'h80;
  assign inv_sbox[8'hce] = 8'hec;
  assign inv_sbox[8'hcf] = 8'h5f;
  assign inv_sbox[8'hd0] = 8'h60;
  assign inv_sbox[8'hd1] = 8'h51;
  assign inv_sbox[8'hd2] = 8'h7f;
  assign inv_sbox[8'hd3] = 8'ha9;
  assign inv_sbox[8'hd4] = 8'h19;
  assign inv_sbox[8'hd5] = 8'hb5;
  assign inv_sbox[8'hd6] = 8'h4a;
  assign inv_sbox[8'hd7] = 8'h0d;
  assign inv_sbox[8'hd8] = 8'h2d;
  assign inv_sbox[8'hd9] = 8'he5;
  assign inv_sbox[8'hda] = 8'h7a;
  assign inv_sbox[8'hdb] = 8'h9f;
  assign inv_sbox[8'hdc] = 8'h93;
  assign inv_sbox[8'hdd] = 8'hc9;
  assign inv_sbox[8'hde] = 8'h9c;
  assign inv_sbox[8'hdf] = 8'hef;
  assign inv_sbox[8'he0] = 8'ha0;
  assign inv_sbox[8'he1] = 8'he0;
  assign inv_sbox[8'he2] = 8'h3b;
  assign inv_sbox[8'he3] = 8'h4d;
  assign inv_sbox[8'he4] = 8'hae;
  assign inv_sbox[8'he5] = 8'h2a;
  assign inv_sbox[8'he6] = 8'hf5;
  assign inv_sbox[8'he7] = 8'hb0;
  assign inv_sbox[8'he8] = 8'hc8;
  assign inv_sbox[8'he9] = 8'heb;
  assign inv_sbox[8'hea] = 8'hbb;
  assign inv_sbox[8'heb] = 8'h3c;
  assign inv_sbox[8'hec] = 8'h83;
  assign inv_sbox[8'hed] = 8'h53;
  assign inv_sbox[8'hee] = 8'h99;
  assign inv_sbox[8'hef] = 8'h61;
  assign inv_sbox[8'hf0] = 8'h17;
  assign inv_sbox[8'hf1] = 8'h2b;
  assign inv_sbox[8'hf2] = 8'h04;
  assign inv_sbox[8'hf3] = 8'h7e;
  assign inv_sbox[8'hf4] = 8'hba;
  assign inv_sbox[8'hf5] = 8'h77;
  assign inv_sbox[8'hf6] = 8'hd6;
  assign inv_sbox[8'hf7] = 8'h26;
  assign inv_sbox[8'hf8] = 8'he1;
  assign inv_sbox[8'hf9] = 8'h69;
  assign inv_sbox[8'hfa] = 8'h14;
  assign inv_sbox[8'hfb] = 8'h63;
  assign inv_sbox[8'hfc] = 8'h55;
  assign inv_sbox[8'hfd] = 8'h21;
  assign inv_sbox[8'hfe] = 8'h0c;
  assign inv_sbox[8'hff] = 8'h7d;

endmodule // aes_inv_sbox


module aes_key_mem(
                   input wire            clk,
                   input wire            reset_n,

                   input wire [255 : 0]  key,
                   input wire [1:0]      keylen,
                   input wire            init,

                   input wire    [3 : 0] round,
                   output wire [127 : 0] round_key,
                   output wire           ready,


                   output wire [31 : 0]  sboxw,
                   input wire  [31 : 0]  new_sboxw
                  );


  //----------------------------------------------------------------
  // Parameters.
  //----------------------------------------------------------------
  localparam AES_128_BIT_KEY = 2'h0;
  localparam AES_192_BIT_KEY = 2'h1;
  localparam AES_256_BIT_KEY = 2'h2;

  localparam AES_128_NUM_ROUNDS = 10;
  localparam AES_192_NUM_ROUNDS = 12;
  localparam AES_256_NUM_ROUNDS = 14;

  localparam CTRL_IDLE     = 3'h0;
  localparam CTRL_INIT     = 3'h1;
  localparam CTRL_GENERATE = 3'h2;
  localparam CTRL_DONE     = 3'h3;


  //----------------------------------------------------------------
  // Registers.
  //----------------------------------------------------------------
  reg [127 : 0] key_mem [0 : 14];
  reg [127 : 0] key_mem_new;
  reg           key_mem_we;

  reg [127 : 0] prev_key0_reg;
  reg [127 : 0] prev_key0_new;
  reg           prev_key0_we;
  
  reg [127 : 0] prev_key1_reg;
  reg [127 : 0] prev_key1_new;
  reg           prev_key1_we;
  
  reg [191 : 0] prev_key2_reg;
  reg [191 : 0] prev_key2_new;
  reg           prev_key2_we;
  
  reg [3 : 0] round_ctr_reg;
  reg [3 : 0] round_ctr_new;
  reg         round_ctr_rst;
  reg         round_ctr_inc;
  reg         round_ctr_we;

  reg [2 : 0] key_mem_ctrl_reg;
  reg [2 : 0] key_mem_ctrl_new;
  reg         key_mem_ctrl_we;

  reg         ready_reg;
  reg         ready_new;
  reg         ready_we;

  reg [7 : 0] rcon_reg;
  reg [7 : 0] rcon_new;
  reg         rcon_we;
  reg         rcon_set;
  reg         rcon_next;

  reg [31 : 0]  tmp_sboxw;
  reg           round_key_update;
  reg [127 : 0] tmp_round_key;


  assign round_key = tmp_round_key;
  assign ready     = ready_reg;
  assign sboxw     = tmp_sboxw;


  always @ (posedge clk or negedge reset_n)
    begin: reg_update
      integer i;

      if (!reset_n)
        begin
          for (i = 0 ; i <= AES_256_NUM_ROUNDS ; i = i + 1)
            key_mem [i] <= 128'h0;

          ready_reg        <= 1'b0;
          rcon_reg         <= 8'h0;
          round_ctr_reg    <= 4'h0;
          prev_key0_reg    <= 128'h0;
          prev_key1_reg    <= 128'h0;
          key_mem_ctrl_reg <= CTRL_IDLE;
        end
      else
        begin
          if (ready_we)
            ready_reg <= ready_new;

          if (rcon_we)
            rcon_reg <= rcon_new;

          if (round_ctr_we)
            round_ctr_reg <= round_ctr_new;

          if (key_mem_we)
            key_mem[round_ctr_reg] <= key_mem_new;

          if (prev_key0_we)
            prev_key0_reg <= prev_key0_new;

          if (prev_key1_we)
            prev_key1_reg <= prev_key1_new;
				
		    if (prev_key2_we)
            prev_key2_reg <= prev_key2_new;

          if (key_mem_ctrl_we)
            key_mem_ctrl_reg <= key_mem_ctrl_new;
        end
    end // reg_update


  always @*
    begin : key_mem_read
      tmp_round_key = key_mem[round];
    end // key_mem_read


  always @*
    begin: round_key_gen
      reg [31 : 0] w0, w1, w2, w3, w4, w5, w6, w7, ow0 , ow1 , ow2 , ow3 , ow4 , ow5;
      reg [31 : 0] k0, k1, k2, k3 , k4 , k5;
      reg [31 : 0] rconw, rotstw, tw, trw;

      // Default assignments.
      key_mem_new   = 128'h0;
      key_mem_we    = 1'b0;
      prev_key0_new = 128'h0;
      prev_key0_we  = 1'b0;
      prev_key1_new = 128'h0;
      prev_key1_we  = 1'b0;

      k0 = 32'h0;
      k1 = 32'h0;
      k2 = 32'h0;
      k3 = 32'h0;
		k4 = 32'h0;
      k5 = 32'h0;

      rcon_set   = 1'b1;
      rcon_next  = 1'b0;

      // Extract words and calculate intermediate values.
      // Perform rotation of sbox word etc.
      w0 = prev_key0_reg[127 : 096];
      w1 = prev_key0_reg[095 : 064];
      w2 = prev_key0_reg[063 : 032];
      w3 = prev_key0_reg[031 : 000];

      w4 = prev_key1_reg[127 : 096];
      w5 = prev_key1_reg[095 : 064];
      w6 = prev_key1_reg[063 : 032];
      w7 = prev_key1_reg[031 : 000];
		
		ow0 = prev_key2_reg[191 : 160];
		ow1 = prev_key2_reg[159 : 128];
		ow2 = prev_key2_reg[127 : 096];
      ow3 = prev_key2_reg[095 : 064];
      ow4 = prev_key2_reg[063 : 032];
      ow5 = prev_key2_reg[031 : 000];
		

      rconw = {rcon_reg, 24'h0};
      tmp_sboxw = w7;
      rotstw = {new_sboxw[23 : 00], new_sboxw[31 : 24]};
      trw = rotstw ^ rconw;
      tw = new_sboxw;

      // Generate the specific round keys.
      if (round_key_update)
        begin
          rcon_set   = 1'b0;
          key_mem_we = 1'b1;
          case (keylen)
            AES_128_BIT_KEY:
              begin
                if (round_ctr_reg == 0)
                  begin
                    key_mem_new   = key[255 : 128];
                    prev_key1_new = key[255 : 128];
                    prev_key1_we  = 1'b1;
                    rcon_next     = 1'b1;
                  end
                else
                  begin
                    k0 = w4 ^ trw;
                    k1 = w5 ^ w4 ^ trw;
                    k2 = w6 ^ w5 ^ w4 ^ trw;
                    k3 = w7 ^ w6 ^ w5 ^ w4 ^ trw;

                    key_mem_new   = {k0, k1, k2, k3};
                    prev_key1_new = {k0, k1, k2, k3};
                    prev_key1_we  = 1'b1;
                    rcon_next     = 1'b1;
                  end
              end
				  
				AES_192_BIT_KEY:
				  begin
				    if (round_ctr_reg == 0)
                  begin
                    key_mem_new   = key[255 : 128];
                    
						  prev_key0_new = key[127 : 000];
                    prev_key0_we  = 1'b1;
						  
						  prev_key2_new = key[255 : 064];
                    prev_key2_we  = 1'b1;
						  
                    rcon_next     = 1'b1;
                  end
                else
                  begin
						  if (round_ctr_reg % 3 == 1) begin
						    tmp_sboxw = ow5;
                      rotstw = {new_sboxw[23 : 00], new_sboxw[31 : 24]};
                      trw = rotstw ^ rconw;
							 
						    k0 = ow0 ^ trw;
                      k1 = ow0 ^ ow1 ^ trw;
                      k2 = ow0 ^ ow1 ^ ow2 ^ trw;
                      k3 = ow0 ^ ow1 ^ ow2 ^ ow3 ^ trw;
						    k4 = ow0 ^ ow1 ^ ow2 ^ ow3 ^ ow4 ^ trw;
						    k5 = ow0 ^ ow1 ^ ow2 ^ ow3 ^ ow4 ^ ow5 ^ trw;
							 
							 key_mem_new = {w0 , w1 , k0 , k1};
							 prev_key2_new = {k0 , k1 , k2 , k3 , k4 , k5};
							 prev_key2_we = 1'b1;
							 
							 prev_key0_new = prev_key2_new[127 : 0];
							 prev_key0_we = 1'b1;
							 
							 rcon_next     = 1'b1; //yes update next
							 
						  end
						  else if (round_ctr_reg % 3 == 2) begin
							 key_mem_new = prev_key0_reg;
							 prev_key0_new = prev_key2_new[191 : 064];
							 prev_key0_we = 1'b1;
						  end
						  else if (round_ctr_reg % 3 == 0) begin
							 tmp_sboxw = ow5;
                      rotstw = {new_sboxw[23 : 00], new_sboxw[31 : 24]};
                      trw = rotstw ^ rconw;
							 
						    k0 = ow0 ^ trw;
                      k1 = ow0 ^ ow1 ^ trw;
                      k2 = ow0 ^ ow1 ^ ow2 ^ trw;
                      k3 = ow0 ^ ow1 ^ ow2 ^ ow3 ^ trw;
						    k4 = ow0 ^ ow1 ^ ow2 ^ ow3 ^ ow4 ^ trw;
						    k5 = ow0 ^ ow1 ^ ow2 ^ ow3 ^ ow4 ^ ow5 ^ trw;
							 
							 key_mem_new = {k0 , k1 , k2 , k3};
							 prev_key2_new = {k0 , k1 , k2 , k3 , k4 , k5};
							 prev_key2_we = 1'b1;
							 
							 prev_key0_new = {k4 , k5 , 64'b0};
							 prev_key0_we = 1'b1;
							 
							 rcon_next     = 1'b1; //yes update next
						  end
                  end
				  end
				  
            AES_256_BIT_KEY:
              begin
                if (round_ctr_reg == 0)
                  begin
                    key_mem_new   = key[255 : 128];
                    prev_key0_new = key[255 : 128];
                    prev_key0_we  = 1'b1;
                  end
                else if (round_ctr_reg == 1)
                  begin
                    key_mem_new   = key[127 : 0];
                    prev_key1_new = key[127 : 0];
                    prev_key1_we  = 1'b1;
                    rcon_next     = 1'b1;
                  end
                else
                  begin
                    if (round_ctr_reg[0] == 0) //even
                      begin
                        k0 = w0 ^ trw;
                        k1 = w1 ^ w0 ^ trw;
                        k2 = w2 ^ w1 ^ w0 ^ trw;
                        k3 = w3 ^ w2 ^ w1 ^ w0 ^ trw;
                      end
                    else //odd
                      begin
                        k0 = w0 ^ tw;
                        k1 = w1 ^ w0 ^ tw;
                        k2 = w2 ^ w1 ^ w0 ^ tw;
                        k3 = w3 ^ w2 ^ w1 ^ w0 ^ tw;
                        rcon_next = 1'b1;
                      end

                    // Store the generated round keys.
                    key_mem_new   = {k0, k1, k2, k3};
                    prev_key1_new = {k0, k1, k2, k3};
                    prev_key1_we  = 1'b1;
                    prev_key0_new = prev_key1_reg;
                    prev_key0_we  = 1'b1;
                  end
              end

            default:
              begin
              end
          endcase // case (keylen)
        end
    end // round_key_gen


  always @*
    begin : rcon_logic
      reg [7 : 0] tmp_rcon;
      rcon_new = 8'h00;
      rcon_we  = 1'b0;

      tmp_rcon = {rcon_reg[6 : 0], 1'b0} ^ (8'h1b & {8{rcon_reg[7]}});

      if (rcon_set)
        begin
          rcon_new = 8'h8d;
          rcon_we  = 1'b1;
        end

      if (rcon_next)
        begin
          rcon_new = tmp_rcon[7 : 0];
          rcon_we  = 1'b1;
        end
    end


  always @*
    begin : round_ctr
      round_ctr_new = 4'h0;
      round_ctr_we  = 1'b0;

      if (round_ctr_rst)
        begin
          round_ctr_new = 4'h0;
          round_ctr_we  = 1'b1;
        end

      else if (round_ctr_inc)
        begin
          round_ctr_new = round_ctr_reg + 1'b1;
          round_ctr_we  = 1'b1;
        end
    end


  always @*
    begin: key_mem_ctrl
      reg [3 : 0] num_rounds;

      // Default assignments.
      ready_new        = 1'b0;
      ready_we         = 1'b0;
      round_key_update = 1'b0;
      round_ctr_rst    = 1'b0;
      round_ctr_inc    = 1'b0;
      key_mem_ctrl_new = CTRL_IDLE;
      key_mem_ctrl_we  = 1'b0;

      if (keylen == AES_128_BIT_KEY)
        num_rounds = AES_128_NUM_ROUNDS;
		else if (keylen == AES_192_BIT_KEY)
		  num_rounds = AES_192_NUM_ROUNDS;
      else
        num_rounds = AES_256_NUM_ROUNDS;

      case(key_mem_ctrl_reg)
        CTRL_IDLE:
          begin
            if (init)
              begin
                ready_new        = 1'b0;
                ready_we         = 1'b1;
                key_mem_ctrl_new = CTRL_INIT;
                key_mem_ctrl_we  = 1'b1;
              end
          end

        CTRL_INIT:
          begin
            round_ctr_rst    = 1'b1;
            key_mem_ctrl_new = CTRL_GENERATE;
            key_mem_ctrl_we  = 1'b1;
          end

        CTRL_GENERATE:
          begin
            round_ctr_inc    = 1'b1;
            round_key_update = 1'b1;
            if (round_ctr_reg == num_rounds)
              begin
                key_mem_ctrl_new = CTRL_DONE;
                key_mem_ctrl_we  = 1'b1;
              end
          end

        CTRL_DONE:
          begin
            ready_new        = 1'b1;
            ready_we         = 1'b1;
            key_mem_ctrl_new = CTRL_IDLE;
            key_mem_ctrl_we  = 1'b1;
          end

        default:
          begin
          end
      endcase // case (key_mem_ctrl_reg)

    end // key_mem_ctrl
endmodule // aes_key_mem

module aes_encipher_block(
                          input wire            clk,
                          input wire            reset_n,

                          input wire            next,

                          input wire [1:0]           keylen,
                          output wire [3 : 0]   round,
                          input wire [127 : 0]  round_key,

                          output wire [31 : 0]  sboxw,
                          input wire  [31 : 0]  new_sboxw,

                          input wire [127 : 0]  block,
                          output wire [127 : 0] new_block,
                          output wire           ready
                         );


  //----------------------------------------------------------------
  // Internal constant and parameter definitions.
  //----------------------------------------------------------------
  localparam AES_128_BIT_KEY = 2'h0;
  localparam AES_192_BIT_KEY = 2'h1;
  localparam AES_256_BIT_KEY = 2'h2;

  localparam AES128_ROUNDS = 4'ha; //10
  localparam AES192_ROUNDS = 4'hc; //12
  localparam AES256_ROUNDS = 4'he; //14
  
  localparam NO_UPDATE    = 3'h0;
  localparam INIT_UPDATE  = 3'h1;
  localparam SBOX_UPDATE  = 3'h2;
  localparam MAIN_UPDATE  = 3'h3;
  localparam FINAL_UPDATE = 3'h4;

  localparam CTRL_IDLE  = 2'h0;
  localparam CTRL_INIT  = 2'h1;
  localparam CTRL_SBOX  = 2'h2;
  localparam CTRL_MAIN  = 2'h3;


  //----------------------------------------------------------------
  // Round functions with sub functions.
  //----------------------------------------------------------------
  function [7 : 0] gm2(input [7 : 0] op);
    begin
      gm2 = {op[6 : 0], 1'b0} ^ (8'h1b & {8{op[7]}});
    end
  endfunction // gm2

  function [7 : 0] gm3(input [7 : 0] op);
    begin
      gm3 = gm2(op) ^ op;
    end
  endfunction // gm3

  function [31 : 0] mixw(input [31 : 0] w);
    reg [7 : 0] b0, b1, b2, b3;
    reg [7 : 0] mb0, mb1, mb2, mb3;
    begin
      b0 = w[31 : 24];
      b1 = w[23 : 16];
      b2 = w[15 : 08];
      b3 = w[07 : 00];

      mb0 = gm2(b0) ^ gm3(b1) ^ b2      ^ b3;
      mb1 = b0      ^ gm2(b1) ^ gm3(b2) ^ b3;
      mb2 = b0      ^ b1      ^ gm2(b2) ^ gm3(b3);
      mb3 = gm3(b0) ^ b1      ^ b2      ^ gm2(b3);

      mixw = {mb0, mb1, mb2, mb3};
    end
  endfunction // mixw

  function [127 : 0] mixcolumns(input [127 : 0] data);
    reg [31 : 0] w0, w1, w2, w3;
    reg [31 : 0] ws0, ws1, ws2, ws3;
    begin
      w0 = data[127 : 096];
      w1 = data[095 : 064];
      w2 = data[063 : 032];
      w3 = data[031 : 000];

      ws0 = mixw(w0);
      ws1 = mixw(w1);
      ws2 = mixw(w2);
      ws3 = mixw(w3);

      mixcolumns = {ws0, ws1, ws2, ws3};
    end
  endfunction // mixcolumns

  function [127 : 0] shiftrows(input [127 : 0] data);
    reg [31 : 0] w0, w1, w2, w3;
    reg [31 : 0] ws0, ws1, ws2, ws3;
    begin
      w0 = data[127 : 096];
      w1 = data[095 : 064];
      w2 = data[063 : 032];
      w3 = data[031 : 000];

      ws0 = {w0[31 : 24], w1[23 : 16], w2[15 : 08], w3[07 : 00]};
      ws1 = {w1[31 : 24], w2[23 : 16], w3[15 : 08], w0[07 : 00]};
      ws2 = {w2[31 : 24], w3[23 : 16], w0[15 : 08], w1[07 : 00]};
      ws3 = {w3[31 : 24], w0[23 : 16], w1[15 : 08], w2[07 : 00]};

      shiftrows = {ws0, ws1, ws2, ws3};
    end
  endfunction // shiftrows

  function [127 : 0] addroundkey(input [127 : 0] data, input [127 : 0] rkey);
    begin
      addroundkey = data ^ rkey;
    end
  endfunction // addroundkey


  reg [1 : 0]   sword_ctr_reg;
  reg [1 : 0]   sword_ctr_new;
  reg           sword_ctr_we;
  reg           sword_ctr_inc;
  reg           sword_ctr_rst;

  reg [3 : 0]   round_ctr_reg;
  reg [3 : 0]   round_ctr_new;
  reg           round_ctr_we;
  reg           round_ctr_rst;
  reg           round_ctr_inc;

  reg [127 : 0] block_new;
  reg [31 : 0]  block_w0_reg;
  reg [31 : 0]  block_w1_reg;
  reg [31 : 0]  block_w2_reg;
  reg [31 : 0]  block_w3_reg;
  reg           block_w0_we;
  reg           block_w1_we;
  reg           block_w2_we;
  reg           block_w3_we;

  reg           ready_reg;
  reg           ready_new;
  reg           ready_we;

  reg [1 : 0]   enc_ctrl_reg;
  reg [1 : 0]   enc_ctrl_new;
  reg           enc_ctrl_we;


  reg [2 : 0]  update_type;
  reg [31 : 0] muxed_sboxw;


  assign round     = round_ctr_reg;
  assign sboxw     = muxed_sboxw;
  assign new_block = {block_w0_reg, block_w1_reg, block_w2_reg, block_w3_reg};
  assign ready     = ready_reg;


  always @ (posedge clk or negedge reset_n)
    begin: reg_update
      if (!reset_n)
        begin
          block_w0_reg  <= 32'h0;
          block_w1_reg  <= 32'h0;
          block_w2_reg  <= 32'h0;
          block_w3_reg  <= 32'h0;
          sword_ctr_reg <= 2'h0;
          round_ctr_reg <= 4'h0;
          ready_reg     <= 1'b1;
          enc_ctrl_reg  <= CTRL_IDLE;
        end
      else
        begin
          if (block_w0_we)
            block_w0_reg <= block_new[127 : 096];

          if (block_w1_we)
            block_w1_reg <= block_new[095 : 064];

          if (block_w2_we)
            block_w2_reg <= block_new[063 : 032];

          if (block_w3_we)
            block_w3_reg <= block_new[031 : 000];

          if (sword_ctr_we)
            sword_ctr_reg <= sword_ctr_new;

          if (round_ctr_we)
            round_ctr_reg <= round_ctr_new;

          if (ready_we)
            ready_reg <= ready_new;

          if (enc_ctrl_we)
            enc_ctrl_reg <= enc_ctrl_new;
        end
    end // reg_update


  always @*
    begin : round_logic
      reg [127 : 0] old_block, shiftrows_block, mixcolumns_block;
      reg [127 : 0] addkey_init_block, addkey_main_block, addkey_final_block;

      block_new   = 128'h0;
      muxed_sboxw = 32'h0;
      block_w0_we = 1'b0;
      block_w1_we = 1'b0;
      block_w2_we = 1'b0;
      block_w3_we = 1'b0;

      old_block          = {block_w0_reg, block_w1_reg, block_w2_reg, block_w3_reg};
      shiftrows_block    = shiftrows(old_block);
      mixcolumns_block   = mixcolumns(shiftrows_block);
      addkey_init_block  = addroundkey(block, round_key);
      addkey_main_block  = addroundkey(mixcolumns_block, round_key);
      addkey_final_block = addroundkey(shiftrows_block, round_key);
	  
      case (update_type)
        INIT_UPDATE:
          begin
            block_new    = addkey_init_block;
            block_w0_we  = 1'b1;
            block_w1_we  = 1'b1;
            block_w2_we  = 1'b1;
            block_w3_we  = 1'b1;
          end

        SBOX_UPDATE:
          begin
            block_new = {new_sboxw, new_sboxw, new_sboxw, new_sboxw}; // my comment: dummy ??
			
            case (sword_ctr_reg)
              2'h0:
                begin
                  muxed_sboxw = block_w0_reg;
                  block_w0_we = 1'b1;
                end

              2'h1:
                begin
                  muxed_sboxw = block_w1_reg;
                  block_w1_we = 1'b1;
                end

              2'h2:
                begin
                  muxed_sboxw = block_w2_reg;
                  block_w2_we = 1'b1;
                end

              2'h3:
                begin
                  muxed_sboxw = block_w3_reg;
                  block_w3_we = 1'b1;
                end
            endcase // case (sbox_mux_ctrl_reg)
          end

        MAIN_UPDATE:
          begin
            block_new    = addkey_main_block;
            block_w0_we  = 1'b1;
            block_w1_we  = 1'b1;
            block_w2_we  = 1'b1;
            block_w3_we  = 1'b1;
          end

        FINAL_UPDATE:
          begin
            block_new    = addkey_final_block;
            block_w0_we  = 1'b1;
            block_w1_we  = 1'b1;
            block_w2_we  = 1'b1;
            block_w3_we  = 1'b1;
          end

        default:
          begin
          end
      endcase // case (update_type)
    end // round_logic


  always @*
    begin : sword_ctr
      sword_ctr_new = 2'h0;
      sword_ctr_we  = 1'b0;

      if (sword_ctr_rst)
        begin
          sword_ctr_new = 2'h0;
          sword_ctr_we  = 1'b1;
        end
      else if (sword_ctr_inc)
        begin
          sword_ctr_new = sword_ctr_reg + 1'b1;
          sword_ctr_we  = 1'b1;
        end
    end // sword_ctr


  always @*
    begin : round_ctr
      round_ctr_new = 4'h0;
      round_ctr_we  = 1'b0;

      if (round_ctr_rst)
        begin
          round_ctr_new = 4'h0;
          round_ctr_we  = 1'b1;
        end
      else if (round_ctr_inc)
        begin
          round_ctr_new = round_ctr_reg + 1'b1;
          round_ctr_we  = 1'b1;
        end
    end // round_ctr


  //----------------------------------------------------------------
  // encipher_ctrl
  //
  // The FSM that controls the encipher operations.
  //----------------------------------------------------------------
  always @*
    begin: encipher_ctrl
      reg [3 : 0] num_rounds;

      // Default assignments.
      sword_ctr_inc = 1'b0;
      sword_ctr_rst = 1'b0;
      round_ctr_inc = 1'b0;
      round_ctr_rst = 1'b0;
      ready_new     = 1'b0;
      ready_we      = 1'b0;
      update_type   = NO_UPDATE;
      enc_ctrl_new  = CTRL_IDLE;
      enc_ctrl_we   = 1'b0;

      if (keylen == AES_256_BIT_KEY)
        begin
          num_rounds = AES256_ROUNDS;
        end
      else if (keylen == AES_192_BIT_KEY)
		  begin
		    num_rounds = AES192_ROUNDS;
		  end
		else
        begin
          num_rounds = AES128_ROUNDS;
        end

      case(enc_ctrl_reg)
        CTRL_IDLE:
          begin
            if (next)
              begin
                round_ctr_rst = 1'b1;
                ready_new     = 1'b0;
                ready_we      = 1'b1;
                enc_ctrl_new  = CTRL_INIT;
                enc_ctrl_we   = 1'b1;
              end
          end

        CTRL_INIT:
          begin
            round_ctr_inc = 1'b1;
            sword_ctr_rst = 1'b1;
            update_type   = INIT_UPDATE;
            enc_ctrl_new  = CTRL_SBOX;
            enc_ctrl_we   = 1'b1;
          end

        CTRL_SBOX:
          begin
            sword_ctr_inc = 1'b1;
            update_type   = SBOX_UPDATE;
            if (sword_ctr_reg == 2'h3)
              begin
                enc_ctrl_new  = CTRL_MAIN;
                enc_ctrl_we   = 1'b1;
              end
          end

        CTRL_MAIN:
          begin
            sword_ctr_rst = 1'b1;
            round_ctr_inc = 1'b1;
            if (round_ctr_reg < num_rounds)
              begin
                update_type   = MAIN_UPDATE;
                enc_ctrl_new  = CTRL_SBOX;
                enc_ctrl_we   = 1'b1;
              end
            else
              begin
                update_type  = FINAL_UPDATE;
                ready_new    = 1'b1;
                ready_we     = 1'b1;
                enc_ctrl_new = CTRL_IDLE;
                enc_ctrl_we  = 1'b1;
              end
          end

        default:
          begin
            // Empty. Just here to make the synthesis tool happy.
          end
      endcase // case (enc_ctrl_reg)
    end // encipher_ctrl

endmodule // aes_encipher_block


module aes_decipher_block(
                          input wire            clk,
                          input wire            reset_n,

                          input wire            next,

                          input wire  [1 : 0]   keylen,
                          output wire [3 : 0]   round,
                          input wire [127 : 0]  round_key,

                          input wire [127 : 0]  block,
                          output wire [127 : 0] new_block,
                          output wire           ready
                         );


  //----------------------------------------------------------------
  // Internal constant and parameter definitions.
  //----------------------------------------------------------------
  localparam AES_128_BIT_KEY = 2'h0;
  localparam AES_192_BIT_KEY = 2'h1;
  localparam AES_256_BIT_KEY = 2'h2;

  localparam AES128_ROUNDS = 4'ha;
  localparam AES192_ROUNDS = 4'hc;
  localparam AES256_ROUNDS = 4'he;

  localparam NO_UPDATE    = 3'h0;
  localparam INIT_UPDATE  = 3'h1;
  localparam SBOX_UPDATE  = 3'h2;
  localparam MAIN_UPDATE  = 3'h3;
  localparam FINAL_UPDATE = 3'h4;

  localparam CTRL_IDLE  = 2'h0;
  localparam CTRL_INIT  = 2'h1;
  localparam CTRL_SBOX  = 2'h2;
  localparam CTRL_MAIN  = 2'h3;


  //----------------------------------------------------------------
  // Gaolis multiplication functions for Inverse MixColumn.
  //----------------------------------------------------------------
  function [7 : 0] gm2(input [7 : 0] op);
    begin
      gm2 = {op[6 : 0], 1'b0} ^ (8'h1b & {8{op[7]}});
    end
  endfunction // gm2

  function [7 : 0] gm3(input [7 : 0] op);
    begin
      gm3 = gm2(op) ^ op;
    end
  endfunction // gm3

  function [7 : 0] gm4(input [7 : 0] op);
    begin
      gm4 = gm2(gm2(op));
    end
  endfunction // gm4

  function [7 : 0] gm8(input [7 : 0] op);
    begin
      gm8 = gm2(gm4(op));
    end
  endfunction // gm8

  function [7 : 0] gm09(input [7 : 0] op);
    begin
      gm09 = gm8(op) ^ op;
    end
  endfunction // gm09

  function [7 : 0] gm11(input [7 : 0] op);
    begin
      gm11 = gm8(op) ^ gm2(op) ^ op;
    end
  endfunction // gm11

  function [7 : 0] gm13(input [7 : 0] op);
    begin
      gm13 = gm8(op) ^ gm4(op) ^ op;
    end
  endfunction // gm13

  function [7 : 0] gm14(input [7 : 0] op);
    begin
      gm14 = gm8(op) ^ gm4(op) ^ gm2(op);
    end
  endfunction // gm14

  function [31 : 0] inv_mixw(input [31 : 0] w);
    reg [7 : 0] b0, b1, b2, b3;
    reg [7 : 0] mb0, mb1, mb2, mb3;
    begin
      b0 = w[31 : 24];
      b1 = w[23 : 16];
      b2 = w[15 : 08];
      b3 = w[07 : 00];

      mb0 = gm14(b0) ^ gm11(b1) ^ gm13(b2) ^ gm09(b3);
      mb1 = gm09(b0) ^ gm14(b1) ^ gm11(b2) ^ gm13(b3);
      mb2 = gm13(b0) ^ gm09(b1) ^ gm14(b2) ^ gm11(b3);
      mb3 = gm11(b0) ^ gm13(b1) ^ gm09(b2) ^ gm14(b3);

      inv_mixw = {mb0, mb1, mb2, mb3};
    end
  endfunction // mixw

  function [127 : 0] inv_mixcolumns(input [127 : 0] data);
    reg [31 : 0] w0, w1, w2, w3;
    reg [31 : 0] ws0, ws1, ws2, ws3;
    begin
      w0 = data[127 : 096];
      w1 = data[095 : 064];
      w2 = data[063 : 032];
      w3 = data[031 : 000];

      ws0 = inv_mixw(w0);
      ws1 = inv_mixw(w1);
      ws2 = inv_mixw(w2);
      ws3 = inv_mixw(w3);

      inv_mixcolumns = {ws0, ws1, ws2, ws3};
    end
  endfunction // inv_mixcolumns

  function [127 : 0] inv_shiftrows(input [127 : 0] data);
    reg [31 : 0] w0, w1, w2, w3;
    reg [31 : 0] ws0, ws1, ws2, ws3;
    begin
      w0 = data[127 : 096];
      w1 = data[095 : 064];
      w2 = data[063 : 032];
      w3 = data[031 : 000];

      ws0 = {w0[31 : 24], w3[23 : 16], w2[15 : 08], w1[07 : 00]};
      ws1 = {w1[31 : 24], w0[23 : 16], w3[15 : 08], w2[07 : 00]};
      ws2 = {w2[31 : 24], w1[23 : 16], w0[15 : 08], w3[07 : 00]};
      ws3 = {w3[31 : 24], w2[23 : 16], w1[15 : 08], w0[07 : 00]};

      inv_shiftrows = {ws0, ws1, ws2, ws3};
    end
  endfunction // inv_shiftrows

  function [127 : 0] addroundkey(input [127 : 0] data, input [127 : 0] rkey);
    begin
      addroundkey = data ^ rkey;
    end
  endfunction // addroundkey


  reg [1 : 0]   sword_ctr_reg;
  reg [1 : 0]   sword_ctr_new;
  reg           sword_ctr_we;
  reg           sword_ctr_inc;
  reg           sword_ctr_rst;

  reg [3 : 0]   round_ctr_reg;
  reg [3 : 0]   round_ctr_new;
  reg           round_ctr_we;
  reg           round_ctr_set;
  reg           round_ctr_dec;

  reg [127 : 0] block_new;
  reg [31 : 0]  block_w0_reg;
  reg [31 : 0]  block_w1_reg;
  reg [31 : 0]  block_w2_reg;
  reg [31 : 0]  block_w3_reg;
  reg           block_w0_we;
  reg           block_w1_we;
  reg           block_w2_we;
  reg           block_w3_we;

  reg           ready_reg;
  reg           ready_new;
  reg           ready_we;

  reg [1 : 0]   dec_ctrl_reg;
  reg [1 : 0]   dec_ctrl_new;
  reg           dec_ctrl_we;


  reg [31 : 0]  tmp_sboxw;
  wire [31 : 0] new_sboxw;
  reg [2 : 0]   update_type;


  aes_inv_sbox inv_sbox_inst(.sboxw(tmp_sboxw), .new_sboxw(new_sboxw));


  assign round     = round_ctr_reg;
  assign new_block = {block_w0_reg, block_w1_reg, block_w2_reg, block_w3_reg};
  assign ready     = ready_reg;


  always @ (posedge clk or negedge reset_n)
    begin: reg_update
      if (!reset_n)
        begin
          block_w0_reg  <= 32'h0;
          block_w1_reg  <= 32'h0;
          block_w2_reg  <= 32'h0;
          block_w3_reg  <= 32'h0;
          sword_ctr_reg <= 2'h0;
          round_ctr_reg <= 4'h0;
          ready_reg     <= 1'b1;
          dec_ctrl_reg  <= CTRL_IDLE;
        end
      else
        begin
          if (block_w0_we)
            block_w0_reg <= block_new[127 : 096];

          if (block_w1_we)
            block_w1_reg <= block_new[095 : 064];

          if (block_w2_we)
            block_w2_reg <= block_new[063 : 032];

          if (block_w3_we)
            block_w3_reg <= block_new[031 : 000];

          if (sword_ctr_we)
            sword_ctr_reg <= sword_ctr_new;

          if (round_ctr_we)
            round_ctr_reg <= round_ctr_new;

          if (ready_we)
            ready_reg <= ready_new;

          if (dec_ctrl_we)
            dec_ctrl_reg <= dec_ctrl_new;
        end
    end // reg_update


  always @*
    begin : round_logic
      reg [127 : 0] old_block, inv_shiftrows_block, inv_mixcolumns_block;
      reg [127 : 0] addkey_block;

      inv_shiftrows_block  = 128'h0;
      inv_mixcolumns_block = 128'h0;
      addkey_block         = 128'h0;
      block_new            = 128'h0;
      tmp_sboxw            = 32'h0;
      block_w0_we          = 1'b0;
      block_w1_we          = 1'b0;
      block_w2_we          = 1'b0;
      block_w3_we          = 1'b0;

      old_block            = {block_w0_reg, block_w1_reg, block_w2_reg, block_w3_reg};

      // Update based on update type.
      case (update_type)
        // InitRound
        INIT_UPDATE:
          begin
            old_block           = block;
            addkey_block        = addroundkey(old_block, round_key);
            inv_shiftrows_block = inv_shiftrows(addkey_block);
            block_new           = inv_shiftrows_block;
            block_w0_we         = 1'b1;
            block_w1_we         = 1'b1;
            block_w2_we         = 1'b1;
            block_w3_we         = 1'b1;
          end

        SBOX_UPDATE:
          begin
            block_new = {new_sboxw, new_sboxw, new_sboxw, new_sboxw};

            case (sword_ctr_reg)
              2'h0:
                begin
                  tmp_sboxw   = block_w0_reg;
                  block_w0_we = 1'b1;
                end

              2'h1:
                begin
                  tmp_sboxw   = block_w1_reg;
                  block_w1_we = 1'b1;
                end

              2'h2:
                begin
                  tmp_sboxw   = block_w2_reg;
                  block_w2_we = 1'b1;
                end

              2'h3:
                begin
                  tmp_sboxw   = block_w3_reg;
                  block_w3_we = 1'b1;
                end
            endcase // case (sbox_mux_ctrl_reg)
          end

        MAIN_UPDATE:
          begin
            addkey_block         = addroundkey(old_block, round_key);
            inv_mixcolumns_block = inv_mixcolumns(addkey_block);
            inv_shiftrows_block  = inv_shiftrows(inv_mixcolumns_block);
            block_new            = inv_shiftrows_block;
            block_w0_we          = 1'b1;
            block_w1_we          = 1'b1;
            block_w2_we          = 1'b1;
            block_w3_we          = 1'b1;
          end

        FINAL_UPDATE:
          begin
            block_new    = addroundkey(old_block, round_key);
            block_w0_we  = 1'b1;
            block_w1_we  = 1'b1;
            block_w2_we  = 1'b1;
            block_w3_we  = 1'b1;
          end

        default:
          begin
          end
      endcase // case (update_type)
    end // round_logic


  always @*
    begin : sword_ctr
      sword_ctr_new = 2'h0;
      sword_ctr_we  = 1'b0;

      if (sword_ctr_rst)
        begin
          sword_ctr_new = 2'h0;
          sword_ctr_we  = 1'b1;
        end
      else if (sword_ctr_inc)
        begin
          sword_ctr_new = sword_ctr_reg + 1'b1;
          sword_ctr_we  = 1'b1;
        end
    end // sword_ctr


  always @*
    begin : round_ctr
      round_ctr_new = 4'h0;
      round_ctr_we  = 1'b0;

      if (round_ctr_set)
        begin
          if (keylen == AES_256_BIT_KEY)
            begin
              round_ctr_new = AES256_ROUNDS;
            end
          else if (keylen == AES_192_BIT_KEY)
            begin
              round_ctr_new = AES192_ROUNDS;
            end
          else
            begin
              round_ctr_new = AES128_ROUNDS;
            end
          round_ctr_we  = 1'b1;
        end
      else if (round_ctr_dec)
        begin
          round_ctr_new = round_ctr_reg - 1'b1;
          round_ctr_we  = 1'b1;
        end
    end // round_ctr


  //----------------------------------------------------------------
  // decipher_ctrl
  //
  // The FSM that controls the decipher operations.
  //----------------------------------------------------------------
  always @*
    begin: decipher_ctrl
      sword_ctr_inc = 1'b0;
      sword_ctr_rst = 1'b0;
      round_ctr_dec = 1'b0;
      round_ctr_set = 1'b0;
      ready_new     = 1'b0;
      ready_we      = 1'b0;
      update_type   = NO_UPDATE;
      dec_ctrl_new  = CTRL_IDLE;
      dec_ctrl_we   = 1'b0;

      case(dec_ctrl_reg)
        CTRL_IDLE:
          begin
            if (next)
              begin
                round_ctr_set = 1'b1;
                ready_new     = 1'b0;
                ready_we      = 1'b1;
                dec_ctrl_new  = CTRL_INIT;
                dec_ctrl_we   = 1'b1;
              end
          end

        CTRL_INIT:
          begin
            sword_ctr_rst = 1'b1;
            update_type   = INIT_UPDATE;
            dec_ctrl_new  = CTRL_SBOX;
            dec_ctrl_we   = 1'b1;
          end

        CTRL_SBOX:
          begin
            sword_ctr_inc = 1'b1;
            update_type   = SBOX_UPDATE;
            if (sword_ctr_reg == 2'h3)
              begin
                round_ctr_dec = 1'b1;
                dec_ctrl_new  = CTRL_MAIN;
                dec_ctrl_we   = 1'b1;
              end
          end

        CTRL_MAIN:
          begin
            sword_ctr_rst = 1'b1;
            if (round_ctr_reg > 0)
              begin
                update_type   = MAIN_UPDATE;
                dec_ctrl_new  = CTRL_SBOX;
                dec_ctrl_we   = 1'b1;
              end
            else
              begin
                update_type  = FINAL_UPDATE;
                ready_new    = 1'b1;
                ready_we     = 1'b1;
                dec_ctrl_new = CTRL_IDLE;
                dec_ctrl_we  = 1'b1;
              end
          end

        default:
          begin
            // Empty. Just here to make the synthesis tool happy.
          end
      endcase // case (dec_ctrl_reg)
    end // decipher_ctrl

endmodule // aes_decipher_block

module aes_core(
                input wire            clk,
                input wire            reset_n,

                input wire            encdec,
                input wire            init,
                input wire            next,
                output wire           ready,

                input wire [255 : 0]  key,
                input wire [1:0]      keylen,

                input wire [127 : 0]  block,
                output wire [127 : 0] result,
                output wire           result_valid
               );




  //----------------------------------------------------------------
  // Internal constant and parameter definitions.
  //----------------------------------------------------------------
  localparam CTRL_IDLE  = 2'h0;
  localparam CTRL_INIT  = 2'h1;
  localparam CTRL_NEXT  = 2'h2;


  //----------------------------------------------------------------
  // Registers including update variables and write enable.
  //----------------------------------------------------------------
  reg [1 : 0] aes_core_ctrl_reg;
  reg [1 : 0] aes_core_ctrl_new;
  reg         aes_core_ctrl_we;

  reg         result_valid_reg;
  reg         result_valid_new;
  reg         result_valid_we;

  reg         ready_reg;
  reg         ready_new;
  reg         ready_we;


  //----------------------------------------------------------------
  // Wires.
  //----------------------------------------------------------------
  reg            init_state;

  wire [127 : 0] round_key;
  wire           key_ready;

  reg            enc_next;
  wire [3 : 0]   enc_round_nr;
  wire [127 : 0] enc_new_block;
  wire           enc_ready;
  wire [31 : 0]  enc_sboxw;

  reg            dec_next;
  wire [3 : 0]   dec_round_nr;
  wire [127 : 0] dec_new_block;
  wire           dec_ready;

  reg [127 : 0]  muxed_new_block;
  reg [3 : 0]    muxed_round_nr;
  reg            muxed_ready;

  wire [31 : 0]  keymem_sboxw;

/* verilator lint_off UNOPTFLAT */
  reg [31 : 0]   muxed_sboxw;
  wire [31 : 0]  new_sboxw;
/* verilator lint_on UNOPTFLAT */


  //----------------------------------------------------------------
  // Instantiations.
  //----------------------------------------------------------------
  aes_encipher_block enc_block(
                               .clk(clk),
                               .reset_n(reset_n),

                               .next(enc_next),

                               .keylen(keylen),
                               .round(enc_round_nr),
                               .round_key(round_key),

                               .sboxw(enc_sboxw),
                               .new_sboxw(new_sboxw),

                               .block(block),
                               .new_block(enc_new_block),
                               .ready(enc_ready)
                              );


  aes_decipher_block dec_block(
                               .clk(clk),
                               .reset_n(reset_n),

                               .next(dec_next),

                               .keylen(keylen),
                               .round(dec_round_nr),
                               .round_key(round_key),

                               .block(block),
                               .new_block(dec_new_block),
                               .ready(dec_ready)
                              );


  aes_key_mem keymem(
                     .clk(clk),
                     .reset_n(reset_n),

                     .key(key),
                     .keylen(keylen),
                     .init(init),

                     .round(muxed_round_nr),
                     .round_key(round_key),
                     .ready(key_ready),

                     .sboxw(keymem_sboxw),
                     .new_sboxw(new_sboxw)
                    );


  aes_sbox sbox_inst(.sboxw(muxed_sboxw), .new_sboxw(new_sboxw));


  //----------------------------------------------------------------
  // Concurrent connectivity for ports etc.
  //----------------------------------------------------------------
  assign ready        = ready_reg;
  assign result       = muxed_new_block;
  assign result_valid = result_valid_reg;


  always @ (posedge clk or negedge reset_n)
    begin: reg_update
      if (!reset_n)
        begin
          result_valid_reg  <= 1'b0;
          ready_reg         <= 1'b1;
          aes_core_ctrl_reg <= CTRL_IDLE;
        end
      else
        begin
          if (result_valid_we)
            result_valid_reg <= result_valid_new;

          if (ready_we)
            ready_reg <= ready_new;

          if (aes_core_ctrl_we)
            aes_core_ctrl_reg <= aes_core_ctrl_new;
        end
    end // reg_update


  always @*
    begin : sbox_mux
      if (init_state)
        begin
          muxed_sboxw = keymem_sboxw;
        end
      else
        begin
          muxed_sboxw = enc_sboxw;
        end
    end // sbox_mux


  always @*
    begin : encdec_mux
      enc_next = 1'b0;
      dec_next = 1'b0;

      if (encdec)
        begin
          // Encipher operations
          enc_next        = next;
          muxed_round_nr  = enc_round_nr;
          muxed_new_block = enc_new_block;
          muxed_ready     = enc_ready;
        end
      else
        begin
          // Decipher operations
          dec_next        = next;
          muxed_round_nr  = dec_round_nr;
          muxed_new_block = dec_new_block;
          muxed_ready     = dec_ready;
        end
    end // encdec_mux


  
  always @*
    begin : aes_core_ctrl
      init_state        = 1'b0;
      ready_new         = 1'b0;
      ready_we          = 1'b0;
      result_valid_new  = 1'b0;
      result_valid_we   = 1'b0;
      aes_core_ctrl_new = CTRL_IDLE;
      aes_core_ctrl_we  = 1'b0;

      case (aes_core_ctrl_reg)
        CTRL_IDLE:
          begin
            if (init)
              begin
                init_state        = 1'b1;
                ready_new         = 1'b0;
                ready_we          = 1'b1;
                result_valid_new  = 1'b0;
                result_valid_we   = 1'b1;
                aes_core_ctrl_new = CTRL_INIT;
                aes_core_ctrl_we  = 1'b1;
              end
            else if (next)
              begin
                init_state        = 1'b0;
                ready_new         = 1'b0;
                ready_we          = 1'b1;
                result_valid_new  = 1'b0;
                result_valid_we   = 1'b1;
                aes_core_ctrl_new = CTRL_NEXT;
                aes_core_ctrl_we  = 1'b1;
              end
          end

        CTRL_INIT:
          begin
            init_state = 1'b1;

            if (key_ready)
              begin
                ready_new         = 1'b1;
                ready_we          = 1'b1;
                aes_core_ctrl_new = CTRL_IDLE;
                aes_core_ctrl_we  = 1'b1;
              end
          end

        CTRL_NEXT:
          begin
            init_state = 1'b0;

            if (muxed_ready)
              begin
                ready_new         = 1'b1;
                ready_we          = 1'b1;
                result_valid_new  = 1'b1;
                result_valid_we   = 1'b1;
                aes_core_ctrl_new = CTRL_IDLE;
                aes_core_ctrl_we  = 1'b1;
             end
          end

        default:
          begin

          end
      endcase // case (aes_core_ctrl_reg)

    end // aes_core_ctrl
endmodule // aes_core

module AES_Enc(
	input wire enable,
	input wire clk,
	input wire reset,
	output wire led,
	output wire done); //the Wrapper
  
  //-------------------------
  // Wires
  //-------------------------
  
  
  wire m_ready;
  wire m_result;
  wire m_reset;
  
  //----------------------------------------------------------------
  // Internal constant and parameter definitions.
  //----------------------------------------------------------------
  localparam CTRL_BEGIN_INIT      = 3'h0;
  localparam CTRL_END_INIT        = 3'h2;
  localparam CTRL_WAIT_INIT       = 3'h1;
  localparam CTRL_BEGIN_BLOCK     = 3'h3;
  localparam CTRL_END_BLOCK       = 3'h5;
  localparam CTRL_WAIT_BLOCK      = 3'h4;
  localparam CTRL_IDLE            = 3'h6;

  //----------------------------------------------------------------
  // Registers including update variables and write enable.
  //----------------------------------------------------------------
  reg [2 : 0] aes_wrapper_ctrl_reg;
  reg [2 : 0] aes_wrapper_ctrl_new;
  reg         aes_wrapper_ctrl_we = 1'b1;
  
  reg m_led      = 1'b0;
  reg m_done     = 1'b0;
  
  wire m_clk;
  assign m_clk = clk;
  
  assign m_reset = !(reset && enable); //cuz core is a negedge reset
  
  
  reg [1:0]   keylen           = 2'h0; //AES 128
  reg [255:0] Key              = 256'h000102030405060708090a0b0c0d0e0f00000000000000000000000000000000;
  //                                  *                                                              *
  reg [127:0] DataIn           = 128'h00112233445566778899aabbccddeeff;
  wire[127:0] DataOut          ;
  reg [127:0] ExpectedData     = 128'h69c4e0d86a7b0430d8cdb78070b4c55a; //a
  reg         m_encode         = 1'b1;
  
  assign led   = m_led;
  assign done  = m_done;
  
  reg [3:0] m_counter = 4'h0;
  reg init = 1'b0;
  reg next = 1'b0;
  
  aes_core dut(
					.clk(m_clk) ,
					.reset_n(m_reset) ,
					.encdec(m_encode) ,
					.init(init) ,
					.next(next) ,
					.ready(m_ready) ,
					.key(Key) ,
					.keylen(keylen) ,
					.block(DataIn) ,
					.result(DataOut) ,
					.result_valid(m_result));
					
	always @ (posedge m_clk , posedge reset) begin
		if (reset) begin
			if (enable) begin
			  aes_wrapper_ctrl_reg = CTRL_BEGIN_INIT;
			  //m_led  <= 1'b0;
			  //m_done <= 1'b0;
			end
		end
		else begin
			if (aes_wrapper_ctrl_we && enable)
			  aes_wrapper_ctrl_reg <= aes_wrapper_ctrl_new;
		end
	end
	
	always @* begin
		case (aes_wrapper_ctrl_reg)
			CTRL_BEGIN_INIT: begin
			   init = 1'b1;
				aes_wrapper_ctrl_new = CTRL_END_INIT;
				m_led = 1'b0;
				m_done = 1'b0;
				//$display("INIT_START");
			end
			
			CTRL_END_INIT: begin
				init = 1'b0;
				aes_wrapper_ctrl_new = CTRL_WAIT_INIT;
				//$display("INIT_END");
			end
			
			CTRL_WAIT_INIT: begin
				if (m_ready) begin
					//$display("WAIT_END");
					aes_wrapper_ctrl_new = CTRL_BEGIN_BLOCK;
				end					
			end
			
			CTRL_BEGIN_BLOCK: begin
				next = 1'b1;
				aes_wrapper_ctrl_new = CTRL_END_BLOCK;
				//$display("BLOCK_START");
			end
			
			CTRL_END_BLOCK: begin
				next = 1'b0;
				aes_wrapper_ctrl_new = CTRL_WAIT_BLOCK;
				//$display("BLOCK_END");
			end
			
			CTRL_WAIT_BLOCK: begin
				if (m_result) begin
					//$display("BLOCK_WAIT_END");
					aes_wrapper_ctrl_new = CTRL_IDLE;
					m_done = 1'b1;
					
					if (DataOut == ExpectedData)
						m_led = 1'b1;
				end
			end
			
			CTRL_IDLE: begin end
			
		endcase
	end
  
endmodule


// =============================================
//   ========  ======= ======= ========
//      ||     ||      ||         ||
//      ||     ||      ||         ||
//      ||     |====== =======    ||
//      ||     ||           ||    ||
//      ||     ||           ||    ||
//      ||     ======= =======    ||
// =============================================

module tb_wrapper();
  reg enable = 1;
  reg clk = 0;
  reg reset = 0;
  wire led;
  wire done;
  
  AES_Enc dut(enable , clk , reset , led , done);
  
  always 
  begin: clk_gen
    #10;
	 clk = !clk;
  end
  
  initial begin
    $display("Wrapper Started");
	 
	 
	 
    reset = 1;
	 #10 reset = 0;
	 
	 while (!done) begin
	 #10;
	 end
	 
	 $display("Generated Keys List:");
	 $display("		key[00] = 0x%016x", dut.dut.keymem.key_mem[00]);
	 $display("		key[01] = 0x%016x", dut.dut.keymem.key_mem[01]);
	 $display("		key[02] = 0x%016x", dut.dut.keymem.key_mem[02]);
	 $display("		key[03] = 0x%016x", dut.dut.keymem.key_mem[03]);
	 $display("		key[04] = 0x%016x", dut.dut.keymem.key_mem[04]);
	 $display("		key[05] = 0x%016x", dut.dut.keymem.key_mem[05]);
	 $display("		key[06] = 0x%016x", dut.dut.keymem.key_mem[06]);
	 $display("		key[07] = 0x%016x", dut.dut.keymem.key_mem[07]);
	 $display("		key[08] = 0x%016x", dut.dut.keymem.key_mem[08]);
	 $display("		key[09] = 0x%016x", dut.dut.keymem.key_mem[09]);
	 $display("		key[10] = 0x%016x", dut.dut.keymem.key_mem[10]);
	 $display("		key[11] = 0x%016x", dut.dut.keymem.key_mem[11]);
	 $display("		key[12] = 0x%016x", dut.dut.keymem.key_mem[12]);
	 $display("		key[13] = 0x%016x", dut.dut.keymem.key_mem[13]);
	 $display("		key[14] = 0x%016x", dut.dut.keymem.key_mem[14]);
	 $display("");
	 $display("Test Results:");
	 $display("		Input Key      : 0x%064x" , dut.Key);
	 $display("		Input Key Type : 0x%01x " , dut.keylen);
	 $display("		Exptected Data : 0x%032x" , dut.ExpectedData);
	 $display("		Received  Data : 0x%032x" , dut.DataOut     );
	 if (led) 
	 $display("		Result         : pass");
	 else
	 $display("		Result         : fail");
	 
	 $display("Wrapper finished with result: %01x (value of led)" , led);
	 
	 $finish;
  end
  
endmodule 

module tb_aes_core();

  //----------------------------------------------------------------
  // Internal constant and parameter definitions.
  //----------------------------------------------------------------
  parameter DEBUG     = 0;
  parameter DUMP_WAIT = 0;

  parameter CLK_HALF_PERIOD = 1;
  parameter CLK_PERIOD = 2 * CLK_HALF_PERIOD;

  parameter AES_128_BIT_KEY = 2'h0;
  parameter AES_192_BIT_KEY = 2'h1;
  parameter AES_256_BIT_KEY = 2'h2;

  parameter AES_DECIPHER = 1'b0;
  parameter AES_ENCIPHER = 1'b1;


  //----------------------------------------------------------------
  // Register and Wire declarations.
  //----------------------------------------------------------------
  reg [31 : 0] cycle_ctr;
  reg [31 : 0] error_ctr;
  reg [31 : 0] tc_ctr;

  reg            tb_clk;
  reg            tb_reset_n;
  reg            tb_encdec;
  reg            tb_init;
  reg            tb_next;
  wire           tb_ready;
  reg [255 : 0]  tb_key;
  reg [1   : 0]  tb_keylen;
  reg [127 : 0]  tb_block;
  wire [127 : 0] tb_result;
  wire           tb_result_valid;


  //----------------------------------------------------------------
  // Device Under Test.
  //----------------------------------------------------------------
  aes_core dut(
               .clk(tb_clk),
               .reset_n(tb_reset_n),

               .encdec(tb_encdec),
               .init(tb_init),
               .next(tb_next),
               .ready(tb_ready),

               .key(tb_key),
               .keylen(tb_keylen),

               .block(tb_block),
               .result(tb_result),
					.result_valid(tb_result_valid)
              );


  //----------------------------------------------------------------
  // clk_gen
  //
  // Always running clock generator process.
  //----------------------------------------------------------------
  always
    begin : clk_gen
      #CLK_HALF_PERIOD;
      tb_clk = !tb_clk;
    end // clk_gen


  //----------------------------------------------------------------
  // sys_monitor()
  //
  // An always running process that creates a cycle counter and
  // conditionally displays information about the DUT.
  //----------------------------------------------------------------
  always
    begin : sys_monitor
      cycle_ctr = cycle_ctr + 1;
      #(CLK_PERIOD);
      if (DEBUG)
        begin
          dump_dut_state();
        end
    end


  //----------------------------------------------------------------
  // dump_dut_state()
  //
  // Dump the state of the dump when needed.
  //----------------------------------------------------------------
  task dump_dut_state;
    begin
      $display("State of DUT");
      $display("------------");
      $display("Inputs and outputs:");
      $display("encdec = 0x%01x, init = 0x%01x, next = 0x%01x",
               dut.encdec, dut.init, dut.next);
      $display("keylen = 0x%01x, key  = 0x%032x ", dut.keylen, dut.key);
      $display("block  = 0x%032x", dut.block);
      $display("");
      $display("ready        = 0x%01x", dut.ready);
      $display("result_valid = 0x%01x, result = 0x%032x",
               dut.result_valid, dut.result);
      $display("");
      $display("Encipher state::");
      $display("enc_ctrl = 0x%01x, round_ctr = 0x%01x",
               dut.enc_block.enc_ctrl_reg, dut.enc_block.round_ctr_reg);
      $display("");
    end
  endtask // dump_dut_state


  //----------------------------------------------------------------
  // dump_keys()
  //
  // Dump the keys in the key memory of the dut.
  //----------------------------------------------------------------
  task dump_keys;
    begin
      $display("State of key memory in DUT:");
      $display("key[00] = 0x%016x", dut.keymem.key_mem[00]);
      $display("key[01] = 0x%016x", dut.keymem.key_mem[01]);
      $display("key[02] = 0x%016x", dut.keymem.key_mem[02]);
      $display("key[03] = 0x%016x", dut.keymem.key_mem[03]);
      $display("key[04] = 0x%016x", dut.keymem.key_mem[04]);
      $display("key[05] = 0x%016x", dut.keymem.key_mem[05]);
      $display("key[06] = 0x%016x", dut.keymem.key_mem[06]);
      $display("key[07] = 0x%016x", dut.keymem.key_mem[07]);
      $display("key[08] = 0x%016x", dut.keymem.key_mem[08]);
      $display("key[09] = 0x%016x", dut.keymem.key_mem[09]);
      $display("key[10] = 0x%016x", dut.keymem.key_mem[10]);
      $display("key[11] = 0x%016x", dut.keymem.key_mem[11]);
      $display("key[12] = 0x%016x", dut.keymem.key_mem[12]);
      $display("key[13] = 0x%016x", dut.keymem.key_mem[13]);
      $display("key[14] = 0x%016x", dut.keymem.key_mem[14]);
      $display("");
    end
  endtask // dump_keys


  //----------------------------------------------------------------
  // reset_dut()
  //
  // Toggle reset to put the DUT into a well known state.
  //----------------------------------------------------------------
  task reset_dut;
    begin
      $display("*** Toggle reset.");
      tb_reset_n = 0;
      #(2 * CLK_PERIOD);
      tb_reset_n = 1;
    end
  endtask // reset_dut


  //----------------------------------------------------------------
  // init_sim()
  //
  // Initialize all counters and testbed functionality as well
  // as setting the DUT inputs to defined values.
  //----------------------------------------------------------------
  task init_sim;
    begin
      cycle_ctr = 0;
      error_ctr = 0;
      tc_ctr    = 0;

      tb_clk     = 0;
      tb_reset_n = 1;
      tb_encdec  = 0;
      tb_init    = 0;
      tb_next    = 0;
      tb_key     = {8{32'h00000000}};
      tb_keylen  = 0;

      tb_block  = {4{32'h00000000}};
    end
  endtask // init_sim


  //----------------------------------------------------------------
  // display_test_result()
  //
  // Display the accumulated test results.
  //----------------------------------------------------------------
  task display_test_result;
    begin
      if (error_ctr == 0)
        begin
          $display("*** All %02d test cases completed successfully", tc_ctr);
        end
      else
        begin
          $display("*** %02d tests completed - %02d test cases did not complete successfully.",
                   tc_ctr, error_ctr);
        end
    end
  endtask // display_test_result


  //----------------------------------------------------------------
  // wait_ready()
  //
  // Wait for the ready flag in the dut to be set.
  //
  // Note: It is the callers responsibility to call the function
  // when the dut is actively processing and will in fact at some
  // point set the flag.
  //----------------------------------------------------------------
  task wait_ready;
    begin
      while (!tb_ready)
        begin
          #(CLK_PERIOD);
          if (DUMP_WAIT)
            begin
              dump_dut_state();
            end
        end
    end
  endtask // wait_ready


  //----------------------------------------------------------------
  // wait_valid()
  //
  // Wait for the result_valid flag in the dut to be set.
  //
  // Note: It is the callers responsibility to call the function
  // when the dut is actively processing a block and will in fact
  // at some point set the flag.
  //----------------------------------------------------------------
  task wait_valid;
    begin
      while (!tb_result_valid)
        begin
          #(CLK_PERIOD);
        end
    end
  endtask // wait_valid


  //----------------------------------------------------------------
  // ecb_mode_single_block_test()
  //
  // Perform ECB mode encryption or decryption single block test.
  //----------------------------------------------------------------
  task ecb_mode_single_block_test(input [7 : 0]   tc_number,
                                  input           encdec,
                                  input [255 : 0] key,
                                  input [1 : 0  ] key_length,
                                  input [127 : 0] block,
                                  input [127 : 0] expected);
   begin
     $display("*** TC %0d ECB mode test started.", tc_number);
     tc_ctr = tc_ctr + 1;

     // Init the cipher with the given key and length.
     tb_key = key;
     tb_keylen = key_length;
     tb_init = 1;
     #(2 * CLK_PERIOD);
     tb_init = 0;
     wait_ready();

     $display("Key expansion done");
     $display("");

     dump_keys();


     // Perform encipher och decipher operation on the block.
     tb_encdec = encdec;
     tb_block = block;
     tb_next = 1;
     #(2 * CLK_PERIOD);
     tb_next = 0;
     wait_ready();

     if (tb_result == expected)
       begin
         $display("*** TC %0d successful.", tc_number);
         $display("");
       end
     else
       begin
         $display("*** ERROR: TC %0d NOT successful.", tc_number);
         $display("Expected: 0x%032x", expected);
         $display("Got:      0x%032x", tb_result);
         $display("");

         error_ctr = error_ctr + 1;
       end
   end
  endtask // ecb_mode_single_block_test


  //----------------------------------------------------------------
  // aes_core_test
  // The main test functionality.
  // Test vectors copied from the follwing NIST documents.
  //
  // NIST SP 800-38A:
  // http://csrc.nist.gov/publications/nistpubs/800-38a/sp800-38a.pdf
  //
  // NIST FIPS-197, Appendix C:
  // https://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.197.pdf
  //
  // Test cases taken from NIST SP 800-38A:
  // http://csrc.nist.gov/publications/nistpubs/800-38a/sp800-38a.pdf
  //----------------------------------------------------------------
  initial
    begin : aes_core_test
      reg [255 : 0] nist_aes128_key1;
      reg [255 : 0] nist_aes128_key2;
      reg [255 : 0] nist_aes256_key1;
      reg [255 : 0] nist_aes256_key2;

      reg [127 : 0] nist_plaintext0;
      reg [127 : 0] nist_plaintext1;
      reg [127 : 0] nist_plaintext2;
      reg [127 : 0] nist_plaintext3;
      reg [127 : 0] nist_plaintext4;

      reg [127 : 0] nist_ecb_128_enc_expected0;
      reg [127 : 0] nist_ecb_128_enc_expected1;
      reg [127 : 0] nist_ecb_128_enc_expected2;
      reg [127 : 0] nist_ecb_128_enc_expected3;
      reg [127 : 0] nist_ecb_128_enc_expected4;

      reg [127 : 0] nist_ecb_256_enc_expected0;
      reg [127 : 0] nist_ecb_256_enc_expected1;
      reg [127 : 0] nist_ecb_256_enc_expected2;
      reg [127 : 0] nist_ecb_256_enc_expected3;
      reg [127 : 0] nist_ecb_256_enc_expected4;

      nist_aes128_key1 = 256'h2b7e151628aed2a6abf7158809cf4f3c00000000000000000000000000000000;
      nist_aes128_key2 = 256'h000102030405060708090a0b0c0d0e0f00000000000000000000000000000000;
      nist_aes256_key1 = 256'h603deb1015ca71be2b73aef0857d77811f352c073b6108d72d9810a30914dff4;
      nist_aes256_key2 = 256'h000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f;

      nist_plaintext0 = 128'h6bc1bee22e409f96e93d7e117393172a;
      nist_plaintext1 = 128'hae2d8a571e03ac9c9eb76fac45af8e51;
      nist_plaintext2 = 128'h30c81c46a35ce411e5fbc1191a0a52ef;
      nist_plaintext3 = 128'hf69f2445df4f9b17ad2b417be66c3710;
      nist_plaintext4 = 128'h00112233445566778899aabbccddeeff;

      nist_ecb_128_enc_expected0 = 128'h3ad77bb40d7a3660a89ecaf32466ef97;
      nist_ecb_128_enc_expected1 = 128'hf5d3d58503b9699de785895a96fdbaaf;
      nist_ecb_128_enc_expected2 = 128'h43b1cd7f598ece23881b00e3ed030688;
      nist_ecb_128_enc_expected3 = 128'h7b0c785e27e8ad3f8223207104725dd4;
      nist_ecb_128_enc_expected4 = 128'h69c4e0d86a7b0430d8cdb78070b4c55a;

      nist_ecb_256_enc_expected0 = 128'hf3eed1bdb5d2a03c064b5a7e3db181f8;
      nist_ecb_256_enc_expected1 = 128'h591ccb10d410ed26dc5ba74a31362870;
      nist_ecb_256_enc_expected2 = 128'hb6ed21b99ca6f4f9f153e7b1beafed1d;
      nist_ecb_256_enc_expected3 = 128'h23304b7a39f9f3ff067d8d8f9e24ecc7;
      nist_ecb_256_enc_expected4 = 128'h8ea2b7ca516745bfeafc49904b496089;


      $display("   -= Testbench for aes core started =-");
      $display("     ================================");
      $display("");

      init_sim();
      dump_dut_state();
      reset_dut();
      dump_dut_state();


      $display("ECB 128 bit key tests");
      $display("---------------------");
      ecb_mode_single_block_test(8'h01, AES_ENCIPHER, nist_aes128_key1, AES_128_BIT_KEY,
                                 nist_plaintext0, nist_ecb_128_enc_expected0);

      ecb_mode_single_block_test(8'h02, AES_ENCIPHER, nist_aes128_key1, AES_128_BIT_KEY,
                                 nist_plaintext1, nist_ecb_128_enc_expected1);

      ecb_mode_single_block_test(8'h03, AES_ENCIPHER, nist_aes128_key1, AES_128_BIT_KEY,
                                 nist_plaintext2, nist_ecb_128_enc_expected2);

      ecb_mode_single_block_test(8'h04, AES_ENCIPHER, nist_aes128_key1, AES_128_BIT_KEY,
                                 nist_plaintext3, nist_ecb_128_enc_expected3);


      ecb_mode_single_block_test(8'h05, AES_DECIPHER, nist_aes128_key1, AES_128_BIT_KEY,
                                 nist_ecb_128_enc_expected0, nist_plaintext0);

      ecb_mode_single_block_test(8'h06, AES_DECIPHER, nist_aes128_key1, AES_128_BIT_KEY,
                                 nist_ecb_128_enc_expected1, nist_plaintext1);

      ecb_mode_single_block_test(8'h07, AES_DECIPHER, nist_aes128_key1, AES_128_BIT_KEY,
                                 nist_ecb_128_enc_expected2, nist_plaintext2);

      ecb_mode_single_block_test(8'h08, AES_DECIPHER, nist_aes128_key1, AES_128_BIT_KEY,
                                 nist_ecb_128_enc_expected3, nist_plaintext3);


      ecb_mode_single_block_test(8'h09, AES_ENCIPHER, nist_aes128_key2, AES_128_BIT_KEY,
                                 nist_plaintext4, nist_ecb_128_enc_expected4);

      ecb_mode_single_block_test(8'h0a, AES_DECIPHER, nist_aes128_key2, AES_128_BIT_KEY,
                                 nist_ecb_128_enc_expected4, nist_plaintext4);


      $display("");
      $display("ECB 256 bit key tests");
      $display("---------------------");
      ecb_mode_single_block_test(8'h10, AES_ENCIPHER, nist_aes256_key1, AES_256_BIT_KEY,
                                 nist_plaintext0, nist_ecb_256_enc_expected0);

      ecb_mode_single_block_test(8'h11, AES_ENCIPHER, nist_aes256_key1, AES_256_BIT_KEY,
                                 nist_plaintext1, nist_ecb_256_enc_expected1);

      ecb_mode_single_block_test(8'h12, AES_ENCIPHER, nist_aes256_key1, AES_256_BIT_KEY,
                                 nist_plaintext2, nist_ecb_256_enc_expected2);

      ecb_mode_single_block_test(8'h13, AES_ENCIPHER, nist_aes256_key1, AES_256_BIT_KEY,
                                 nist_plaintext3, nist_ecb_256_enc_expected3);


      ecb_mode_single_block_test(8'h14, AES_DECIPHER, nist_aes256_key1, AES_256_BIT_KEY,
                                 nist_ecb_256_enc_expected0, nist_plaintext0);

      ecb_mode_single_block_test(8'h15, AES_DECIPHER, nist_aes256_key1, AES_256_BIT_KEY,
                                 nist_ecb_256_enc_expected1, nist_plaintext1);

      ecb_mode_single_block_test(8'h16, AES_DECIPHER, nist_aes256_key1, AES_256_BIT_KEY,
                                 nist_ecb_256_enc_expected2, nist_plaintext2);

      ecb_mode_single_block_test(8'h17, AES_DECIPHER, nist_aes256_key1, AES_256_BIT_KEY,
                                 nist_ecb_256_enc_expected3, nist_plaintext3);


      ecb_mode_single_block_test(8'h18, AES_ENCIPHER, nist_aes256_key2, AES_256_BIT_KEY,
                                 nist_plaintext4, nist_ecb_256_enc_expected4);

      ecb_mode_single_block_test(8'h19, AES_DECIPHER, nist_aes256_key2, AES_256_BIT_KEY,
                                 nist_ecb_256_enc_expected4, nist_plaintext4);

      display_test_result();
      $display("");
      $display("*** AES core simulation done. ***");
      $finish;
    end // aes_core_test
endmodule // tb_aes_core


module tb_aes_encipher_block();

  //----------------------------------------------------------------
  // Internal constant and parameter definitions.
  //----------------------------------------------------------------
  parameter DEBUG     = 0;
  parameter DUMP_WAIT = 0;

  parameter CLK_HALF_PERIOD = 1;
  parameter CLK_PERIOD = 2 * CLK_HALF_PERIOD;

  parameter AES_128_BIT_KEY = 2'h0;
  parameter AES_192_BIT_KEY = 2'h1;
  parameter AES_256_BIT_KEY = 2'h2;
  
  parameter AES_DECIPHER = 1'b0;
  parameter AES_ENCIPHER = 1'b1;


  //----------------------------------------------------------------
  // Register and Wire declarations.
  //----------------------------------------------------------------
  reg [31 : 0]   cycle_ctr;
  reg [31 : 0]   error_ctr;
  reg [31 : 0]   tc_ctr;

  reg            tb_clk;
  reg            tb_reset_n;

  reg            tb_next;
  reg  [1:0]     tb_keylen;
  wire           tb_ready;
  wire [3 : 0]   tb_round;
  wire [127 : 0] tb_round_key;

  wire [31 : 0]  tb_sboxw;
  wire [31 : 0]  tb_new_sboxw;

  reg [127 : 0]  tb_block;
  wire [127 : 0] tb_new_block;

  reg [127 : 0] key_mem [0 : 14];


  //----------------------------------------------------------------
  // Assignments.
  //----------------------------------------------------------------
  assign tb_round_key = key_mem[tb_round];


  //----------------------------------------------------------------
  // Device Under Test.
  //----------------------------------------------------------------
  // We need an sbox for the tests.
  aes_sbox sbox(
                .sboxw(tb_sboxw),
                .new_sboxw(tb_new_sboxw)
               );


  // The device under test.
  aes_encipher_block dut(
                         .clk(tb_clk),
                         .reset_n(tb_reset_n),

                         .next(tb_next),

                         .keylen(tb_keylen),
                         .round(tb_round),
                         .round_key(tb_round_key),

                         .sboxw(tb_sboxw),
                         .new_sboxw(tb_new_sboxw),

                         .block(tb_block),
                         .new_block(tb_new_block),
                         .ready(tb_ready)
                        );


  //----------------------------------------------------------------
  // clk_gen
  //
  // Always running clock generator process.
  //----------------------------------------------------------------
  always
    begin : clk_gen
      #CLK_HALF_PERIOD;
      tb_clk = !tb_clk;
    end // clk_gen


  //----------------------------------------------------------------
  // sys_monitor()
  //
  // An always running process that creates a cycle counter and
  // conditionally displays information about the DUT.
  //----------------------------------------------------------------
  always
    begin : sys_monitor
      cycle_ctr = cycle_ctr + 1;
      #(CLK_PERIOD);
      if (DEBUG)
        begin
          dump_dut_state();
        end
    end


  //----------------------------------------------------------------
  // dump_dut_state()
  //
  // Dump the state of the dump when needed.
  //----------------------------------------------------------------
  task dump_dut_state;
    begin
      $display("State of DUT");
      $display("------------");
      $display("Interfaces");
      $display("ready = 0x%01x, next = 0x%01x, keylen = 0x%01x",
               dut.ready, dut.next, dut.keylen);
      $display("block     = 0x%032x", dut.block);
      $display("new_block = 0x%032x", dut.new_block);
      $display("");

      $display("Control states");
      $display("round = 0x%01x", dut.round);
      $display("enc_ctrl = 0x%01x, update_type = 0x%01x, sword_ctr = 0x%01x, round_ctr = 0x%01x",
               dut.enc_ctrl_reg, dut.update_type, dut.sword_ctr_reg, dut.round_ctr_reg);
      $display("");

      $display("Internal data values");
      $display("round_key = 0x%016x", dut.round_key);
      $display("sboxw = 0x%08x, new_sboxw = 0x%08x", dut.sboxw, dut.new_sboxw);
      $display("block_w0_reg = 0x%08x, block_w1_reg = 0x%08x, block_w2_reg = 0x%08x, block_w3_reg = 0x%08x",
               dut.block_w0_reg, dut.block_w1_reg, dut.block_w2_reg, dut.block_w3_reg);
      $display("");
      $display("old_block          = 0x%08x", dut.round_logic.old_block);
      $display("shiftrows_block    = 0x%08x", dut.round_logic.shiftrows_block);
      $display("mixcolumns_block   = 0x%08x", dut.round_logic.mixcolumns_block);
      $display("addkey_init_block  = 0x%08x", dut.round_logic.addkey_init_block);
      $display("addkey_main_block  = 0x%08x", dut.round_logic.addkey_main_block);
      $display("addkey_final_block = 0x%08x", dut.round_logic.addkey_final_block);
      $display("block_w0_new = 0x%08x, block_w1_new = 0x%08x, block_w2_new = 0x%08x, block_w3_new = 0x%08x",
               dut.block_new[127 : 096], dut.block_new[095 : 064],
               dut.block_new[063 : 032], dut.block_new[031 : 000]);
      $display("");
    end
  endtask // dump_dut_state


  //----------------------------------------------------------------
  // reset_dut()
  //
  // Toggle reset to put the DUT into a well known state.
  //----------------------------------------------------------------
  task reset_dut;
    begin
      $display("--- Toggle reset.");
      tb_reset_n = 0;
      #(2 * CLK_PERIOD);
      tb_reset_n = 1;
      $display("");
    end
  endtask // reset_dut


  //----------------------------------------------------------------
  // init_sim()
  //
  // Initialize all counters and testbed functionality as well
  // as setting the DUT inputs to defined values.
  //----------------------------------------------------------------
  task init_sim;
    begin
      cycle_ctr    = 0;
      error_ctr    = 0;
      tc_ctr       = 0;

      tb_clk       = 0;
      tb_reset_n   = 1;

      tb_next      = 0;
      tb_keylen    = 0;

      tb_block     = {4{32'h00000000}};
    end
  endtask // init_sim


  //----------------------------------------------------------------
  // display_test_result()
  //
  // Display the accumulated test results.
  //----------------------------------------------------------------
  task display_test_result;
    begin
      if (error_ctr == 0)
        begin
          $display("--- All %02d test cases completed successfully", tc_ctr);
        end
      else
        begin
          $display("--- %02d tests completed - %02d test cases did not complete successfully.",
                   tc_ctr, error_ctr);
        end
    end
  endtask // display_test_result


  //----------------------------------------------------------------
  // wait_ready()
  //
  // Wait for the ready flag in the dut to be set.
  //
  // Note: It is the callers responsibility to call the function
  // when the dut is actively processing and will in fact at some
  // point set the flag.
  //----------------------------------------------------------------
  task wait_ready;
    begin
      while (!tb_ready)
        begin
          #(CLK_PERIOD);
          if (DUMP_WAIT)
            begin
              dump_dut_state();
            end
        end
    end
  endtask // wait_ready


  //----------------------------------------------------------------
  // test_ecb_enc()
  //
  // Perform ECB mode encryption test.
  //----------------------------------------------------------------
  task test_ecb_enc(
                    input [1:0]     key_length,
                    input [127 : 0] block,
                    input [127 : 0] expected);
   begin
     tc_ctr = tc_ctr + 1;

     $display("--- ECB mode test started.");

     // Init the cipher with the given key and length.
     tb_keylen = key_length;

     // Perform encipher operation on the block.
     tb_block = block;
     tb_next = 1;
     #(2 * CLK_PERIOD);
     tb_next = 0;
     #(2 * CLK_PERIOD);

     wait_ready();

     if (tb_new_block == expected)
       begin
         $display("--- Testcase successful.");
         $display("--- Got: 0x%032x", tb_new_block);
       end
     else
       begin
         $display("--- ERROR: Testcase NOT successful.");
         $display("--- Expected: 0x%032x", expected);
         $display("--- Got:      0x%032x", tb_new_block);
         error_ctr = error_ctr + 1;
       end
     $display("--- ECB mode test completed.");
   end
  endtask // ecb_mode_single_block_test


  //----------------------------------------------------------------
  // load_nist128_key
  //----------------------------------------------------------------
  task load_nist128_key;
    begin : load_nist128_key
      key_mem[00] = 128'h000102030405060708090a0b0c0d0e0f;
      key_mem[01] = 128'hd6aa74fdd2af72fadaa678f1d6ab76fe;
      key_mem[02] = 128'hb692cf0b643dbdf1be9bc5006830b3fe;
      key_mem[03] = 128'hb6ff744ed2c2c9bf6c590cbf0469bf41;
      key_mem[04] = 128'h47f7f7bc95353e03f96c32bcfd058dfd;
      key_mem[05] = 128'h3caaa3e8a99f9deb50f3af57adf622aa;
      key_mem[06] = 128'h5e390f7df7a69296a7553dc10aa31f6b;
      key_mem[07] = 128'h14f9701ae35fe28c440adf4d4ea9c026;
      key_mem[08] = 128'h47438735a41c65b9e016baf4aebf7ad2;
      key_mem[09] = 128'h549932d1f08557681093ed9cbe2c974e;
      key_mem[10] = 128'h13111d7fe3944a17f307a78b4d2b30c5;
      key_mem[11] = 128'h00000000000000000000000000000000;
      key_mem[12] = 128'h00000000000000000000000000000000;
      key_mem[13] = 128'h00000000000000000000000000000000;
      key_mem[14] = 128'h00000000000000000000000000000000;
    end
  endtask // load_nist128_key
  
  task load_nist192_key;
    begin : load_nist192_key
      key_mem[00] = 128'h000102030405060708090a0b0c0d0e0f;
      key_mem[01] = 128'h10111213141516175846f2f95c43f4fe;
      key_mem[02] = 128'h544afef55847f0fa4856e2e95c43f4fe;
      key_mem[03] = 128'h40f949b31cbabd4d48f043b810b7b342;
      key_mem[04] = 128'h58e151ab04a2a5557effb5416245080c;
      key_mem[05] = 128'h2ab54bb43a02f8f662e3a95d66410c08;
      key_mem[06] = 128'hf501857297448d7ebdf1c6ca87f33e3c;
      key_mem[07] = 128'he510976183519b6934157c9ea351f1e0;
      key_mem[08] = 128'h1ea0372a995309167c439e77ff12051e;
      key_mem[09] = 128'hdd7e0e887e2fff68608fc842f9dcc154;
      key_mem[10] = 128'h859f5f237a8d5a3dc0c02952beefd63a;
      key_mem[11] = 128'hde601e7827bcdf2ca223800fd8aeda32;
      key_mem[12] = 128'ha4970a331a78dc09c418c271e3a41d5d;
      key_mem[13] = 128'h00000000000000000000000000000000;
      key_mem[14] = 128'h00000000000000000000000000000000;
    end
  endtask // load_nist192_key


  //----------------------------------------------------------------
  // load_nist256_key
  //----------------------------------------------------------------
  task load_nist256_key;
    begin : load_nist256_key
      key_mem[00] = 128'h000102030405060708090a0b0c0d0e0f;
      key_mem[01] = 128'h101112131415161718191a1b1c1d1e1f;
      key_mem[02] = 128'ha573c29fa176c498a97fce93a572c09c;
      key_mem[03] = 128'h1651a8cd0244beda1a5da4c10640bade;
      key_mem[04] = 128'hae87dff00ff11b68a68ed5fb03fc1567;
      key_mem[05] = 128'h6de1f1486fa54f9275f8eb5373b8518d;
      key_mem[06] = 128'hc656827fc9a799176f294cec6cd5598b;
      key_mem[07] = 128'h3de23a75524775e727bf9eb45407cf39;
      key_mem[08] = 128'h0bdc905fc27b0948ad5245a4c1871c2f;
      key_mem[09] = 128'h45f5a66017b2d387300d4d33640a820a;
      key_mem[10] = 128'h7ccff71cbeb4fe5413e6bbf0d261a7df;
      key_mem[11] = 128'hf01afafee7a82979d7a5644ab3afe640;
      key_mem[12] = 128'h2541fe719bf500258813bbd55a721c0a;
      key_mem[13] = 128'h4e5a6699a9f24fe07e572baacdf8cdea;
      key_mem[14] = 128'h24fc79ccbf0979e9371ac23c6d68de36;
    end
  endtask // load_nist256_key


  //----------------------------------------------------------------
  // test_nist_enc_128_1
  //----------------------------------------------------------------
  task test_nist_enc_128_1;
    begin : nist_enc_128_1
      reg [127 : 0] plaintext;
      reg [127 : 0] ciphertext;

      plaintext  = 128'h00112233445566778899aabbccddeeff;
      ciphertext = 128'h69c4e0d86a7b0430d8cdb78070b4c55a;

      $display("--- test_nist_enc_128_1: Started.");

      test_ecb_enc(AES_128_BIT_KEY, plaintext, ciphertext);
      $display("--- test_nist_enc_128_1: Completed.");
      $display("");
    end
  endtask // test_nist_enc_128_1


  //----------------------------------------------------------------
  // test_nist_enc_192_1
  //----------------------------------------------------------------
  task test_nist_enc_192_1;
    begin : nist_enc_192_1
      reg [127 : 0] plaintext;
      reg [127 : 0] ciphertext;

      plaintext  = 128'h00112233445566778899aabbccddeeff;
      ciphertext = 128'hdda97ca4864cdfe06eaf70a0ec0d7191;

      $display("--- test_nist_enc_192_1: Started.");

      test_ecb_enc(AES_192_BIT_KEY, plaintext, ciphertext);
      $display("--- test_nist_enc_192_1: Completed.");
      $display("");
    end
  endtask // test_nist_enc_128_2


  //----------------------------------------------------------------
  // test_nist_enc_256_1
  //----------------------------------------------------------------
  task test_nist_enc_256_1;
    begin : nist_enc_256_1
      reg [127 : 0] plaintext;
      reg [127 : 0] ciphertext;

      plaintext  = 128'h00112233445566778899aabbccddeeff;
      ciphertext = 128'h8ea2b7ca516745bfeafc49904b496089;

      $display("--- test_nist_enc_256_1: Started.");

      test_ecb_enc(AES_256_BIT_KEY, plaintext, ciphertext);
      $display("--- test_nist_enc_256_1: Completed.");
      $display("");
    end
  endtask // test_nist_enc_128_3


  //----------------------------------------------------------------
  // tb_aes_encipher_block
  // The main test functionality.
  //----------------------------------------------------------------
  initial
    begin : tb_aes_encipher_block
      $display("   -= Testbench for aes encipher block started =-");
      $display("     ============================================");
      $display("");

      init_sim();
      reset_dut();

      load_nist128_key();
      test_nist_enc_128_1();
		
		load_nist192_key();
      test_nist_enc_192_1();
      
      load_nist256_key();
      test_nist_enc_256_1();
      
      display_test_result();
      $display("");
      $display("   -= Testbench for aes encipher block completed =-");
      $display("     ============================================");
      $finish;
    end // tb_aes_encipher_block
endmodule // tb_aes_encipher_block
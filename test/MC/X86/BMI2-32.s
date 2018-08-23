// RUN: llvm-mc -triple i386-unknown-unknown --show-encoding %s | FileCheck %s

// CHECK: bzhil %edx, -485498096(%edx,%eax,4), %edx 
// CHECK: encoding: [0xc4,0xe2,0x68,0xf5,0x94,0x82,0x10,0xe3,0x0f,0xe3]      
bzhil %edx, -485498096(%edx,%eax,4), %edx 

// CHECK: bzhil %edx, 485498096(%edx,%eax,4), %edx 
// CHECK: encoding: [0xc4,0xe2,0x68,0xf5,0x94,0x82,0xf0,0x1c,0xf0,0x1c]      
bzhil %edx, 485498096(%edx,%eax,4), %edx 

// CHECK: bzhil %edx, 485498096(%edx), %edx 
// CHECK: encoding: [0xc4,0xe2,0x68,0xf5,0x92,0xf0,0x1c,0xf0,0x1c]      
bzhil %edx, 485498096(%edx), %edx 

// CHECK: bzhil %edx, 485498096, %edx 
// CHECK: encoding: [0xc4,0xe2,0x68,0xf5,0x15,0xf0,0x1c,0xf0,0x1c]      
bzhil %edx, 485498096, %edx 

// CHECK: bzhil %edx, 64(%edx,%eax), %edx 
// CHECK: encoding: [0xc4,0xe2,0x68,0xf5,0x54,0x02,0x40]      
bzhil %edx, 64(%edx,%eax), %edx 

// CHECK: bzhil %edx, (%edx), %edx 
// CHECK: encoding: [0xc4,0xe2,0x68,0xf5,0x12]      
bzhil %edx, (%edx), %edx 

// CHECK: bzhil %edx, %edx, %edx 
// CHECK: encoding: [0xc4,0xe2,0x68,0xf5,0xd2]      
bzhil %edx, %edx, %edx 

// CHECK: mulxl -485498096(%edx,%eax,4), %edx, %edx 
// CHECK: encoding: [0xc4,0xe2,0x6b,0xf6,0x94,0x82,0x10,0xe3,0x0f,0xe3]      
mulxl -485498096(%edx,%eax,4), %edx, %edx 

// CHECK: mulxl 485498096(%edx,%eax,4), %edx, %edx 
// CHECK: encoding: [0xc4,0xe2,0x6b,0xf6,0x94,0x82,0xf0,0x1c,0xf0,0x1c]      
mulxl 485498096(%edx,%eax,4), %edx, %edx 

// CHECK: mulxl 485498096(%edx), %edx, %edx 
// CHECK: encoding: [0xc4,0xe2,0x6b,0xf6,0x92,0xf0,0x1c,0xf0,0x1c]      
mulxl 485498096(%edx), %edx, %edx 

// CHECK: mulxl 485498096, %edx, %edx 
// CHECK: encoding: [0xc4,0xe2,0x6b,0xf6,0x15,0xf0,0x1c,0xf0,0x1c]      
mulxl 485498096, %edx, %edx 

// CHECK: mulxl 64(%edx,%eax), %edx, %edx 
// CHECK: encoding: [0xc4,0xe2,0x6b,0xf6,0x54,0x02,0x40]      
mulxl 64(%edx,%eax), %edx, %edx 

// CHECK: mulxl (%edx), %edx, %edx 
// CHECK: encoding: [0xc4,0xe2,0x6b,0xf6,0x12]      
mulxl (%edx), %edx, %edx 

// CHECK: mulxl %edx, %edx, %edx 
// CHECK: encoding: [0xc4,0xe2,0x6b,0xf6,0xd2]      
mulxl %edx, %edx, %edx 

// CHECK: pdepl -485498096(%edx,%eax,4), %edx, %edx 
// CHECK: encoding: [0xc4,0xe2,0x6b,0xf5,0x94,0x82,0x10,0xe3,0x0f,0xe3]      
pdepl -485498096(%edx,%eax,4), %edx, %edx 

// CHECK: pdepl 485498096(%edx,%eax,4), %edx, %edx 
// CHECK: encoding: [0xc4,0xe2,0x6b,0xf5,0x94,0x82,0xf0,0x1c,0xf0,0x1c]      
pdepl 485498096(%edx,%eax,4), %edx, %edx 

// CHECK: pdepl 485498096(%edx), %edx, %edx 
// CHECK: encoding: [0xc4,0xe2,0x6b,0xf5,0x92,0xf0,0x1c,0xf0,0x1c]      
pdepl 485498096(%edx), %edx, %edx 

// CHECK: pdepl 485498096, %edx, %edx 
// CHECK: encoding: [0xc4,0xe2,0x6b,0xf5,0x15,0xf0,0x1c,0xf0,0x1c]      
pdepl 485498096, %edx, %edx 

// CHECK: pdepl 64(%edx,%eax), %edx, %edx 
// CHECK: encoding: [0xc4,0xe2,0x6b,0xf5,0x54,0x02,0x40]      
pdepl 64(%edx,%eax), %edx, %edx 

// CHECK: pdepl (%edx), %edx, %edx 
// CHECK: encoding: [0xc4,0xe2,0x6b,0xf5,0x12]      
pdepl (%edx), %edx, %edx 

// CHECK: pdepl %edx, %edx, %edx 
// CHECK: encoding: [0xc4,0xe2,0x6b,0xf5,0xd2]      
pdepl %edx, %edx, %edx 

// CHECK: pextl -485498096(%edx,%eax,4), %edx, %edx 
// CHECK: encoding: [0xc4,0xe2,0x6a,0xf5,0x94,0x82,0x10,0xe3,0x0f,0xe3]      
pextl -485498096(%edx,%eax,4), %edx, %edx 

// CHECK: pextl 485498096(%edx,%eax,4), %edx, %edx 
// CHECK: encoding: [0xc4,0xe2,0x6a,0xf5,0x94,0x82,0xf0,0x1c,0xf0,0x1c]      
pextl 485498096(%edx,%eax,4), %edx, %edx 

// CHECK: pextl 485498096(%edx), %edx, %edx 
// CHECK: encoding: [0xc4,0xe2,0x6a,0xf5,0x92,0xf0,0x1c,0xf0,0x1c]      
pextl 485498096(%edx), %edx, %edx 

// CHECK: pextl 485498096, %edx, %edx 
// CHECK: encoding: [0xc4,0xe2,0x6a,0xf5,0x15,0xf0,0x1c,0xf0,0x1c]      
pextl 485498096, %edx, %edx 

// CHECK: pextl 64(%edx,%eax), %edx, %edx 
// CHECK: encoding: [0xc4,0xe2,0x6a,0xf5,0x54,0x02,0x40]      
pextl 64(%edx,%eax), %edx, %edx 

// CHECK: pextl (%edx), %edx, %edx 
// CHECK: encoding: [0xc4,0xe2,0x6a,0xf5,0x12]      
pextl (%edx), %edx, %edx 

// CHECK: pextl %edx, %edx, %edx 
// CHECK: encoding: [0xc4,0xe2,0x6a,0xf5,0xd2]      
pextl %edx, %edx, %edx 

// CHECK: rorxl $0, -485498096(%edx,%eax,4), %edx 
// CHECK: encoding: [0xc4,0xe3,0x7b,0xf0,0x94,0x82,0x10,0xe3,0x0f,0xe3,0x00]      
rorxl $0, -485498096(%edx,%eax,4), %edx 

// CHECK: rorxl $0, 485498096(%edx,%eax,4), %edx 
// CHECK: encoding: [0xc4,0xe3,0x7b,0xf0,0x94,0x82,0xf0,0x1c,0xf0,0x1c,0x00]      
rorxl $0, 485498096(%edx,%eax,4), %edx 

// CHECK: rorxl $0, 485498096(%edx), %edx 
// CHECK: encoding: [0xc4,0xe3,0x7b,0xf0,0x92,0xf0,0x1c,0xf0,0x1c,0x00]      
rorxl $0, 485498096(%edx), %edx 

// CHECK: rorxl $0, 485498096, %edx 
// CHECK: encoding: [0xc4,0xe3,0x7b,0xf0,0x15,0xf0,0x1c,0xf0,0x1c,0x00]      
rorxl $0, 485498096, %edx 

// CHECK: rorxl $0, 64(%edx,%eax), %edx 
// CHECK: encoding: [0xc4,0xe3,0x7b,0xf0,0x54,0x02,0x40,0x00]      
rorxl $0, 64(%edx,%eax), %edx 

// CHECK: rorxl $0, (%edx), %edx 
// CHECK: encoding: [0xc4,0xe3,0x7b,0xf0,0x12,0x00]      
rorxl $0, (%edx), %edx 

// CHECK: rorxl $0, %edx, %edx 
// CHECK: encoding: [0xc4,0xe3,0x7b,0xf0,0xd2,0x00]      
rorxl $0, %edx, %edx 

// CHECK: sarxl %edx, -485498096(%edx,%eax,4), %edx 
// CHECK: encoding: [0xc4,0xe2,0x6a,0xf7,0x94,0x82,0x10,0xe3,0x0f,0xe3]      
sarxl %edx, -485498096(%edx,%eax,4), %edx 

// CHECK: sarxl %edx, 485498096(%edx,%eax,4), %edx 
// CHECK: encoding: [0xc4,0xe2,0x6a,0xf7,0x94,0x82,0xf0,0x1c,0xf0,0x1c]      
sarxl %edx, 485498096(%edx,%eax,4), %edx 

// CHECK: sarxl %edx, 485498096(%edx), %edx 
// CHECK: encoding: [0xc4,0xe2,0x6a,0xf7,0x92,0xf0,0x1c,0xf0,0x1c]      
sarxl %edx, 485498096(%edx), %edx 

// CHECK: sarxl %edx, 485498096, %edx 
// CHECK: encoding: [0xc4,0xe2,0x6a,0xf7,0x15,0xf0,0x1c,0xf0,0x1c]      
sarxl %edx, 485498096, %edx 

// CHECK: sarxl %edx, 64(%edx,%eax), %edx 
// CHECK: encoding: [0xc4,0xe2,0x6a,0xf7,0x54,0x02,0x40]      
sarxl %edx, 64(%edx,%eax), %edx 

// CHECK: sarxl %edx, (%edx), %edx 
// CHECK: encoding: [0xc4,0xe2,0x6a,0xf7,0x12]      
sarxl %edx, (%edx), %edx 

// CHECK: sarxl %edx, %edx, %edx 
// CHECK: encoding: [0xc4,0xe2,0x6a,0xf7,0xd2]      
sarxl %edx, %edx, %edx 

// CHECK: shlxl %edx, -485498096(%edx,%eax,4), %edx 
// CHECK: encoding: [0xc4,0xe2,0x69,0xf7,0x94,0x82,0x10,0xe3,0x0f,0xe3]      
shlxl %edx, -485498096(%edx,%eax,4), %edx 

// CHECK: shlxl %edx, 485498096(%edx,%eax,4), %edx 
// CHECK: encoding: [0xc4,0xe2,0x69,0xf7,0x94,0x82,0xf0,0x1c,0xf0,0x1c]      
shlxl %edx, 485498096(%edx,%eax,4), %edx 

// CHECK: shlxl %edx, 485498096(%edx), %edx 
// CHECK: encoding: [0xc4,0xe2,0x69,0xf7,0x92,0xf0,0x1c,0xf0,0x1c]      
shlxl %edx, 485498096(%edx), %edx 

// CHECK: shlxl %edx, 485498096, %edx 
// CHECK: encoding: [0xc4,0xe2,0x69,0xf7,0x15,0xf0,0x1c,0xf0,0x1c]      
shlxl %edx, 485498096, %edx 

// CHECK: shlxl %edx, 64(%edx,%eax), %edx 
// CHECK: encoding: [0xc4,0xe2,0x69,0xf7,0x54,0x02,0x40]      
shlxl %edx, 64(%edx,%eax), %edx 

// CHECK: shlxl %edx, (%edx), %edx 
// CHECK: encoding: [0xc4,0xe2,0x69,0xf7,0x12]      
shlxl %edx, (%edx), %edx 

// CHECK: shlxl %edx, %edx, %edx 
// CHECK: encoding: [0xc4,0xe2,0x69,0xf7,0xd2]      
shlxl %edx, %edx, %edx 

// CHECK: shrxl %edx, -485498096(%edx,%eax,4), %edx 
// CHECK: encoding: [0xc4,0xe2,0x6b,0xf7,0x94,0x82,0x10,0xe3,0x0f,0xe3]      
shrxl %edx, -485498096(%edx,%eax,4), %edx 

// CHECK: shrxl %edx, 485498096(%edx,%eax,4), %edx 
// CHECK: encoding: [0xc4,0xe2,0x6b,0xf7,0x94,0x82,0xf0,0x1c,0xf0,0x1c]      
shrxl %edx, 485498096(%edx,%eax,4), %edx 

// CHECK: shrxl %edx, 485498096(%edx), %edx 
// CHECK: encoding: [0xc4,0xe2,0x6b,0xf7,0x92,0xf0,0x1c,0xf0,0x1c]      
shrxl %edx, 485498096(%edx), %edx 

// CHECK: shrxl %edx, 485498096, %edx 
// CHECK: encoding: [0xc4,0xe2,0x6b,0xf7,0x15,0xf0,0x1c,0xf0,0x1c]      
shrxl %edx, 485498096, %edx 

// CHECK: shrxl %edx, 64(%edx,%eax), %edx 
// CHECK: encoding: [0xc4,0xe2,0x6b,0xf7,0x54,0x02,0x40]      
shrxl %edx, 64(%edx,%eax), %edx 

// CHECK: shrxl %edx, (%edx), %edx 
// CHECK: encoding: [0xc4,0xe2,0x6b,0xf7,0x12]      
shrxl %edx, (%edx), %edx 

// CHECK: shrxl %edx, %edx, %edx 
// CHECK: encoding: [0xc4,0xe2,0x6b,0xf7,0xd2]      
shrxl %edx, %edx, %edx 


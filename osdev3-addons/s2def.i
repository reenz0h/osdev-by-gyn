; make to make alignment to 'a' bytes with 'b' bytes
%define align2(a,b) times (a - ($ - $$) % a) db b

; some helpers for GDT descriptors setup
%define SEG_CODE_XR (10 << 8)      ; segment type - code execute/read
%define SEG_DATA_RW (2 << 8)       ; segment type - data read/write

%define SEG_DESTYPE(x) (x << 12)   ; seg. descriptor type (0 - system, 1 - code/data)
%define SEG_PRIV(x)    (x << 13)   ; segment privilege level (0 - ring0, 3 - ring3) 
%define SEG_PRESENT(x) (x << 15)   ; segment present
%define SEG_LONG(x)    (x << 21)   ; segment long mode
%define SEG_OPSIZE(x)  (x << 22)   ; segment operation size (0 - 16bit, 1 - 32bit)
%define SEG_GRAN(x)    (x << 23)   ; segment granularity (0 - bytes, 1 - pages)

; GDT selectors
%define CODE_SEL 0x8
%define DATA_SEL 0x10
%define TSS_SEL  0x18

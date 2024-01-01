scriptencoding utf-8

let b:keymap_name = "xsampa"

loadkeymap


" Numbers below correspond to the sections of
" John Wells' full proposal (PDF document):
" "Computer-coding the IPA: a proposed extension of SAMPA"
" Available at:
" http://www.phon.ucl.ac.uk/home/sampa/x-sampa.htm

" Extras, not in Wells' proposal:

" .	.
_= <char-0x0329> " ̩
_j <char-0x02B2> " ʲ
_~ <char-0x0303> " ̃

" End of extras

" a	a
" b	b
" c	c
" d	d
" e	e
" f	f
g <char-0x0261> " ɡ
" h	h
" i	i
" j	j
" k	k
" l	l
" m	m
" n	n
" o	o
" p	p
" q	q
" r	r
" s	s
" t	t
" u	u
" v	v
" w	w
" x	x
" y	y
" z	z

A <char-0x0251> " ɑ
B <char-0x03B2> " β
C <char-0x00E7> " ç
D <char-0x00F0> " ð
E <char-0x025B> " ɛ
F <char-0x0271> " ɱ
G <char-0x0263> " ɣ
H <char-0x0265> " ɥ
I <char-0x026A> " ɪ
J <char-0x0272> " ɲ
K <char-0x026C> " ɬ
L <char-0x028E> " ʎ
M <char-0x026F> " ɯ
N <char-0x014B> " ŋ
O <char-0x0254> " ɔ
P <char-0x028B> " ʋ
Q <char-0x0252> " ɒ
R <char-0x0281> " ʁ
S <char-0x0283> " ʃ
T <char-0x03B8> " θ
U <char-0x028A> " ʊ
V <char-0x028C> " ʌ
W <char-0x028D> " ʍ
X <char-0x03C7> " χ
Y <char-0x028F> " ʏ
Z <char-0x0292> " ʒ

" ____ 3. vowels ____

{ <char-0x00E6> " æ
6 <char-0x0250> " ɐ
@ <char-0x0259> " ə
3 <char-0x025C> " ɜ
2 <char-0x00F8> " ø
9 <char-0x0153> " œ
& <char-0x0276> " ɶ
} <char-0x0289> " ʉ

" ____ 3. consonants ____

? <char-0x0294> " ʔ

" ____ 3. length, stress ____

:    <char-0x02D0> " ː
\"   <char-0x02C8> " ˈ
%    <char-0x02CC> " ˌ
<TB> <char-0x02E5><char-0x02E9> " ˥˩
<BT> <char-0x02E9><char-0x02E5> " ˩˥

" ____ 3. diacritics ____

= <char-0x0329> " ̩
~ <char-0x0303> " ̃

" ____ 5. ____

' <char-0x02B2> " ʲ

" ____ 6. ____

`  <char-0x02DE> " ˞
@` <char-0x025A> " ɚ
3` <char-0x025D> " ɝ
t` <char-0x0288> " ʈ
d` <char-0x0256> " ɖ
n` <char-0x0273> " ɳ
s` <char-0x0282> " ʂ
z` <char-0x0290> " ʐ
l` <char-0x026D> " ɭ
r` <char-0x027D> " ɽ

" ____ 7. ____

1  <char-0x0268> " ɨ
8  <char-0x0275> " ɵ
7  <char-0x0264> " ɤ

" ____ 8. ____

4  <char-0x027E> " ɾ
5  <char-0x026B> " ɫ

" ____ 9. ____




" ____ 12. ____

B\\ <char-0x0299> " ʙ
G\\ <char-0x0262> " ɢ
H\\ <char-0x029C> " ʜ
L\\ <char-0x029F> " ʟ
N\\ <char-0x0274> " ɴ

R\\ <char-0x0280> " ʀ

X\\ <char-0x0127> " ħ
?\\ <char-0x0295> " ʕ
h\\ <char-0x0266> " ɦ
J\\ <char-0x025F> " ɟ
K\\ <char-0x026E> " ɮ
p\\ <char-0x0278> " ɸ
j\\ <char-0x029D> " ʝ
M\\ <char-0x0270> " ɰ
r\\ <char-0x0279> " ɹ

r\\` <char-0x027B> " ɻ

O\\  <char-0x0298> " ʘ
@\\  <char-0x0258> " ɘ
3\\  <char-0x025E> " ɞ

" Proposal has ʚ for 3\ instead of its mirror image ɞ
" But proposal describes it as "open-mid central-rounded vowel"
" This really should be ɞ
" cf. Unicode specification:
" ɞ - lower-mid central rounded vowel
" ʚ - lower-mid front rounded vowel, non-IPA alternative for preferred œ oe-ligature
" See also the vowels on the well-known IPA chart

l\\  <char-0x027A> " ɺ
<\\  <char-0x02A2> " ʢ
>\\  <char-0x02A1> " ʡ
s\\  <char-0x0255> " ɕ
z\\  <char-0x0291> " ʑ
x\\  <char-0x0267> " ɧ

I\\  <char-0x1D7B> " ᵻ	ɪ̶
U\\  <char-0x1D7F> " ᵿ	ʊ̶

" ____ 13. ____

_w   <char-0x02B7> " ʷ
_G   <char-0x02E0> " ˠ
_?\\ <char-0x02E4> " ˤ
_n   <char-0x207F> " ⁿ
_l   <char-0x02E1> " ˡ

_h   <char-0x02B0> " ʰ

" ____ 14. ____

_>  <char-0x02BC> " ʼ

b_<    <char-0x0253> " ɓ
d_<    <char-0x0257> " ɗ
J\\_<  <char-0x0284> " ʄ
g_<    <char-0x0260> " ɠ
G\\_<  <char-0x029B> " ʛ
" p_<		# p_<
" t_<		# t_<
" c_<		# c_<
" k_<		# k_<
" q_<		# q_<

" ____ 15. ____


_0 <char-0x0325> " ̥
_v <char-0x032C> " ̬
_O <char-0x0339> " ̹
_c <char-0x031C> " ̜
_+ <char-0x031F> " ̟
_- <char-0x0320> " ̠
_" <char-0x0308> " ̈
_x <char-0x033D> " ̽
_^ <char-0x032F> " ̯

_t <char-0x0324> " ̤
_k <char-0x0330> " ̰
_N <char-0x033C> " ̼

_d <char-0x032A> " ̪
_a <char-0x033A> " ̺
_m <char-0x033B> " ̻

_} <char-0x02FA> " ˺

_e  <char-0x0334> " ̴
b_e <char-0x1D6C> " ᵬ
d_e <char-0x1D6D> " ᵭ
f_e <char-0x1D6E> " ᵮ
l_e <char-0x026B> " ɫ
m_e <char-0x1D6F> " ᵯ
n_e <char-0x1D70> " ᵰ
p_e <char-0x1D71> " ᵱ
r_e <char-0x1D72> " ᵲ
4_e <char-0x1D73> " ᵳ
s_e <char-0x1D74> " ᵴ
t_e <char-0x1D75> " ᵵ
z_e <char-0x1D76> " ᵶ

_r <char-0x031D> " ̝
_o <char-0x031E> " ̞
_A <char-0x0318> " ̘
_q <char-0x0319> " ̙

" ____ 16. ____

_ <char-0x0361> " ͡

- <char-0x2060> " ⁠	# ­ or ⁠ ???

" ____ 17. ____


|\\     <char-0x01C0> " ǀ
!\\     <char-0x01C3> " ǃ
|\\|\\  <char-0x01C1> " ǁ
=\\     <char-0x01C2> " ǂ

" ____ 18. ____

v\\  <char-0x028B> " ʋ

" _<		# _<
" _?		# _?

" ____ 19. ____


:\\  <char-0x02D1> " ˑ
_X   <char-0x0306> " ̆
-\\  <char-0x035C> " ͜

|  <char-0x01C0> " ǀ
|| <char-0x01C1> " ǁ

" ____ 22. ____

<T> <char-0x02E5> " ˥
<H> <char-0x02E6> " ˦
<M> <char-0x02E7> " ˧
<L> <char-0x02E8> " ˨
<B> <char-0x02E9> " ˩


<!>  <char-0x2193> " ↓
<^>  <char-0x2191> " ↑
<R>  <char-0x2197> " ↗
</>  <char-0x2197> " ↗
<F>  <char-0x2198> " ↘
<\\> <char-0x2198> " ↘

" ____ 23. ____

_T <char-0x030B> " ̋
_H <char-0x0301> " ́
_M <char-0x0304> " ̄
_L <char-0x0300> " ̀
_B <char-0x030F> " ̏

_R <char-0x030C> " ̌
_/ <char-0x030C> " ̌
_L_H <char-0x030C> " ̌

_F   <char-0x0302> " ̂
_\\  <char-0x0302> " ̂
_H_L <char-0x0302> " ̂

_T_H <char-0x1DC7> " ᷇
_B_L <char-0x1DC5> " ᷅
_H_T <char-0x1DC4> " ᷄
_L_B <char-0x1DC6> " ᷆

" Different from Wells: _M_H_L  "rising-falling"
_L_H_L <char-0x1DC8> " ᷈
_R_F   <char-0x1DC8> " ᷈
_/_\\  <char-0x1DC8> " ᷈

_H_L_H <char-0x1DC9> " ᷉
_F_R   <char-0x1DC9> " ᷉
_\\_/  <char-0x1DC9> " ᷉

" ____ 25. ____

! <char-0x2193> " ↓
^ <char-0x2191> " ↑

" ____ all tones ____

<BB> <char-0x02E9><char-0x02E9> " ˩˩
<BL> <char-0x02E9><char-0x02E8> " ˩˨
<BM> <char-0x02E9><char-0x02E7> " ˩˧
<BH> <char-0x02E9><char-0x02E6> " ˩˦
<LB> <char-0x02E8><char-0x02E9> " ˨˩
<LL> <char-0x02E8><char-0x02E8> " ˨˨
<LM> <char-0x02E8><char-0x02E7> " ˨˧
<LH> <char-0x02E8><char-0x02E6> " ˨˦
<LT> <char-0x02E8><char-0x02E5> " ˨˥
<MB> <char-0x02E7><char-0x02E9> " ˧˩
<ML> <char-0x02E7><char-0x02E8> " ˧˨
<MM> <char-0x02E7><char-0x02E7> " ˧˧
<MH> <char-0x02E7><char-0x02E6> " ˧˦
<MT> <char-0x02E7><char-0x02E5> " ˧˥
<HB> <char-0x02E6><char-0x02E9> " ˦˩
<HL> <char-0x02E6><char-0x02E8> " ˦˨
<HM> <char-0x02E6><char-0x02E7> " ˦˧
<HH> <char-0x02E6><char-0x02E6> " ˦˦
<HT> <char-0x02E6><char-0x02E5> " ˦˥
<TL> <char-0x02E5><char-0x02E8> " ˥˨
<TM> <char-0x02E5><char-0x02E7> " ˥˧
<TH> <char-0x02E5><char-0x02E6> " ˥˦
<TT> <char-0x02E5><char-0x02E5> " ˥˥
<BBB> <char-0x02E9><char-0x02E9><char-0x02E9> " ˩˩˩
<BBL> <char-0x02E9><char-0x02E9><char-0x02E8> " ˩˩˨
<BBM> <char-0x02E9><char-0x02E9><char-0x02E7> " ˩˩˧
<BBH> <char-0x02E9><char-0x02E9><char-0x02E6> " ˩˩˦
<BBT> <char-0x02E9><char-0x02E9><char-0x02E5> " ˩˩˥
<BLB> <char-0x02E9><char-0x02E8><char-0x02E9> " ˩˨˩
<BLL> <char-0x02E9><char-0x02E8><char-0x02E8> " ˩˨˨
<BLM> <char-0x02E9><char-0x02E8><char-0x02E7> " ˩˨˧
<BLH> <char-0x02E9><char-0x02E8><char-0x02E6> " ˩˨˦
<BLT> <char-0x02E9><char-0x02E8><char-0x02E5> " ˩˨˥
<BMB> <char-0x02E9><char-0x02E7><char-0x02E9> " ˩˧˩
<BML> <char-0x02E9><char-0x02E7><char-0x02E8> " ˩˧˨
<BMM> <char-0x02E9><char-0x02E7><char-0x02E7> " ˩˧˧
<BMH> <char-0x02E9><char-0x02E7><char-0x02E6> " ˩˧˦
<BMT> <char-0x02E9><char-0x02E7><char-0x02E5> " ˩˧˥
<BHB> <char-0x02E9><char-0x02E6><char-0x02E9> " ˩˦˩
<BHL> <char-0x02E9><char-0x02E6><char-0x02E8> " ˩˦˨
<BHM> <char-0x02E9><char-0x02E6><char-0x02E7> " ˩˦˧
<BHH> <char-0x02E9><char-0x02E6><char-0x02E6> " ˩˦˦
<BHT> <char-0x02E9><char-0x02E6><char-0x02E5> " ˩˦˥
<BTB> <char-0x02E9><char-0x02E5><char-0x02E9> " ˩˥˩
<BTL> <char-0x02E9><char-0x02E5><char-0x02E8> " ˩˥˨
<BTM> <char-0x02E9><char-0x02E5><char-0x02E7> " ˩˥˧
<BTH> <char-0x02E9><char-0x02E5><char-0x02E6> " ˩˥˦
<BTT> <char-0x02E9><char-0x02E5><char-0x02E5> " ˩˥˥
<LBB> <char-0x02E8><char-0x02E9><char-0x02E9> " ˨˩˩
<LBL> <char-0x02E8><char-0x02E9><char-0x02E8> " ˨˩˨
<LBM> <char-0x02E8><char-0x02E9><char-0x02E7> " ˨˩˧
<LBH> <char-0x02E8><char-0x02E9><char-0x02E6> " ˨˩˦
<LBT> <char-0x02E8><char-0x02E9><char-0x02E5> " ˨˩˥
<LLB> <char-0x02E8><char-0x02E8><char-0x02E9> " ˨˨˩
<LLL> <char-0x02E8><char-0x02E8><char-0x02E8> " ˨˨˨
<LLM> <char-0x02E8><char-0x02E8><char-0x02E7> " ˨˨˧
<LLH> <char-0x02E8><char-0x02E8><char-0x02E6> " ˨˨˦
<LLT> <char-0x02E8><char-0x02E8><char-0x02E5> " ˨˨˥
<LMB> <char-0x02E8><char-0x02E7><char-0x02E9> " ˨˧˩
<LML> <char-0x02E8><char-0x02E7><char-0x02E8> " ˨˧˨
<LMM> <char-0x02E8><char-0x02E7><char-0x02E7> " ˨˧˧
<LMH> <char-0x02E8><char-0x02E7><char-0x02E6> " ˨˧˦
<LMT> <char-0x02E8><char-0x02E7><char-0x02E5> " ˨˧˥
<LHB> <char-0x02E8><char-0x02E6><char-0x02E9> " ˨˦˩
<LHL> <char-0x02E8><char-0x02E6><char-0x02E8> " ˨˦˨
<LHM> <char-0x02E8><char-0x02E6><char-0x02E7> " ˨˦˧
<LHH> <char-0x02E8><char-0x02E6><char-0x02E6> " ˨˦˦
<LHT> <char-0x02E8><char-0x02E6><char-0x02E5> " ˨˦˥
<LTB> <char-0x02E8><char-0x02E5><char-0x02E9> " ˨˥˩
<LTL> <char-0x02E8><char-0x02E5><char-0x02E8> " ˨˥˨
<LTM> <char-0x02E8><char-0x02E5><char-0x02E7> " ˨˥˧
<LTH> <char-0x02E8><char-0x02E5><char-0x02E6> " ˨˥˦
<LTT> <char-0x02E8><char-0x02E5><char-0x02E5> " ˨˥˥
<MBB> <char-0x02E7><char-0x02E9><char-0x02E9> " ˧˩˩
<MBL> <char-0x02E7><char-0x02E9><char-0x02E8> " ˧˩˨
<MBM> <char-0x02E7><char-0x02E9><char-0x02E7> " ˧˩˧
<MBH> <char-0x02E7><char-0x02E9><char-0x02E6> " ˧˩˦
<MBT> <char-0x02E7><char-0x02E9><char-0x02E5> " ˧˩˥
<MLB> <char-0x02E7><char-0x02E8><char-0x02E9> " ˧˨˩
<MLL> <char-0x02E7><char-0x02E8><char-0x02E8> " ˧˨˨
<MLM> <char-0x02E7><char-0x02E8><char-0x02E7> " ˧˨˧
<MLH> <char-0x02E7><char-0x02E8><char-0x02E6> " ˧˨˦
<MLT> <char-0x02E7><char-0x02E8><char-0x02E5> " ˧˨˥
<MMB> <char-0x02E7><char-0x02E7><char-0x02E9> " ˧˧˩
<MML> <char-0x02E7><char-0x02E7><char-0x02E8> " ˧˧˨
<MMM> <char-0x02E7><char-0x02E7><char-0x02E7> " ˧˧˧
<MMH> <char-0x02E7><char-0x02E7><char-0x02E6> " ˧˧˦
<MMT> <char-0x02E7><char-0x02E7><char-0x02E5> " ˧˧˥
<MHB> <char-0x02E7><char-0x02E6><char-0x02E9> " ˧˦˩
<MHL> <char-0x02E7><char-0x02E6><char-0x02E8> " ˧˦˨
<MHM> <char-0x02E7><char-0x02E6><char-0x02E7> " ˧˦˧
<MHH> <char-0x02E7><char-0x02E6><char-0x02E6> " ˧˦˦
<MHT> <char-0x02E7><char-0x02E6><char-0x02E5> " ˧˦˥
<MTB> <char-0x02E7><char-0x02E5><char-0x02E9> " ˧˥˩
<MTL> <char-0x02E7><char-0x02E5><char-0x02E8> " ˧˥˨
<MTM> <char-0x02E7><char-0x02E5><char-0x02E7> " ˧˥˧
<MTH> <char-0x02E7><char-0x02E5><char-0x02E6> " ˧˥˦
<MTT> <char-0x02E7><char-0x02E5><char-0x02E5> " ˧˥˥
<HBB> <char-0x02E6><char-0x02E9><char-0x02E9> " ˦˩˩
<HBL> <char-0x02E6><char-0x02E9><char-0x02E8> " ˦˩˨
<HBM> <char-0x02E6><char-0x02E9><char-0x02E7> " ˦˩˧
<HBH> <char-0x02E6><char-0x02E9><char-0x02E6> " ˦˩˦
<HBT> <char-0x02E6><char-0x02E9><char-0x02E5> " ˦˩˥
<HLB> <char-0x02E6><char-0x02E8><char-0x02E9> " ˦˨˩
<HLL> <char-0x02E6><char-0x02E8><char-0x02E8> " ˦˨˨
<HLM> <char-0x02E6><char-0x02E8><char-0x02E7> " ˦˨˧
<HLH> <char-0x02E6><char-0x02E8><char-0x02E6> " ˦˨˦
<HLT> <char-0x02E6><char-0x02E8><char-0x02E5> " ˦˨˥
<HMB> <char-0x02E6><char-0x02E7><char-0x02E9> " ˦˧˩
<HML> <char-0x02E6><char-0x02E7><char-0x02E8> " ˦˧˨
<HMM> <char-0x02E6><char-0x02E7><char-0x02E7> " ˦˧˧
<HMH> <char-0x02E6><char-0x02E7><char-0x02E6> " ˦˧˦
<HMT> <char-0x02E6><char-0x02E7><char-0x02E5> " ˦˧˥
<HHB> <char-0x02E6><char-0x02E6><char-0x02E9> " ˦˦˩
<HHL> <char-0x02E6><char-0x02E6><char-0x02E8> " ˦˦˨
<HHM> <char-0x02E6><char-0x02E6><char-0x02E7> " ˦˦˧
<HHH> <char-0x02E6><char-0x02E6><char-0x02E6> " ˦˦˦
<HHT> <char-0x02E6><char-0x02E6><char-0x02E5> " ˦˦˥
<HTB> <char-0x02E6><char-0x02E5><char-0x02E9> " ˦˥˩
<HTL> <char-0x02E6><char-0x02E5><char-0x02E8> " ˦˥˨
<HTM> <char-0x02E6><char-0x02E5><char-0x02E7> " ˦˥˧
<HTH> <char-0x02E6><char-0x02E5><char-0x02E6> " ˦˥˦
<HTT> <char-0x02E6><char-0x02E5><char-0x02E5> " ˦˥˥
<TBB> <char-0x02E5><char-0x02E9><char-0x02E9> " ˥˩˩
<TBL> <char-0x02E5><char-0x02E9><char-0x02E8> " ˥˩˨
<TBM> <char-0x02E5><char-0x02E9><char-0x02E7> " ˥˩˧
<TBH> <char-0x02E5><char-0x02E9><char-0x02E6> " ˥˩˦
<TBT> <char-0x02E5><char-0x02E9><char-0x02E5> " ˥˩˥
<TLB> <char-0x02E5><char-0x02E8><char-0x02E9> " ˥˨˩
<TLL> <char-0x02E5><char-0x02E8><char-0x02E8> " ˥˨˨
<TLM> <char-0x02E5><char-0x02E8><char-0x02E7> " ˥˨˧
<TLH> <char-0x02E5><char-0x02E8><char-0x02E6> " ˥˨˦
<TLT> <char-0x02E5><char-0x02E8><char-0x02E5> " ˥˨˥
<TMB> <char-0x02E5><char-0x02E7><char-0x02E9> " ˥˧˩
<TML> <char-0x02E5><char-0x02E7><char-0x02E8> " ˥˧˨
<TMM> <char-0x02E5><char-0x02E7><char-0x02E7> " ˥˧˧
<TMH> <char-0x02E5><char-0x02E7><char-0x02E6> " ˥˧˦
<TMT> <char-0x02E5><char-0x02E7><char-0x02E5> " ˥˧˥
<THB> <char-0x02E5><char-0x02E6><char-0x02E9> " ˥˦˩
<THL> <char-0x02E5><char-0x02E6><char-0x02E8> " ˥˦˨
<THM> <char-0x02E5><char-0x02E6><char-0x02E7> " ˥˦˧
<THH> <char-0x02E5><char-0x02E6><char-0x02E6> " ˥˦˦
<THT> <char-0x02E5><char-0x02E6><char-0x02E5> " ˥˦˥
<TTB> <char-0x02E5><char-0x02E5><char-0x02E9> " ˥˥˩
<TTL> <char-0x02E5><char-0x02E5><char-0x02E8> " ˥˥˨
<TTM> <char-0x02E5><char-0x02E5><char-0x02E7> " ˥˥˧
<TTH> <char-0x02E5><char-0x02E5><char-0x02E6> " ˥˥˦
<TTT> <char-0x02E5><char-0x02E5><char-0x02E5> " ˥˥˥

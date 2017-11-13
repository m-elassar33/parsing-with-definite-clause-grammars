:- set_prolog_flag(toplevel_print_options,[quoted(true), portray(true), max_depth(0)]).


/*the pronouns are considered determiners*/

 sentence(s(NP,VP)) --> noun_phrase(NP), verb_phrase(VP).
 sentence(s(NP,RP,VP1,VP2)) --> noun_phrase(NP), rel_pronoun(RP), verb_phrase(VP1), verb_phrase(VP2).
 noun_phrase(np(D,N)) --> det(D), noun(N).
 noun_phrase(np(D,CN)) --> det(D), cmplx_noun(CN).
 verb_phrase(vp(V,PP)) --> verb(V), prep_phrase(PP).
 verb_phrase(vp(CV,PP)) --> cmplx_verb(CV), prep_phrase(PP).
 verb_phrase(vp(V,NP)) --> verb(V), noun_phrase(NP).
 verb_phrase(vp(V,NP1,NP2)) --> verb(V), noun_phrase(NP1), noun_phrase(NP2).
 verb_phrase(vp(V,OP,NP)) --> verb(V), obj_pronoun(OP), noun_phrase(NP).
 verb_phrase(vp(CV,NP)) --> cmplx_verb(CV), noun_phrase(NP).
 verb_phrase(vp(CV,NP1,NP2)) --> cmplx_verb(CV), noun_phrase(NP1), noun_phrase(NP2).
 verb_phrase(vp(CV,OP,NP)) --> cmplx_verb(CV), obj_pronoun(OP), noun_phrase(NP).
 verb_phrase(vp(V,NP,PP)) --> verb(V), noun_phrase(NP), prep_phrase(PP).
 verb_phrase(vp(V,NP1,NP2,PP)) --> verb(V), noun_phrase(NP1), noun_phrase(NP2), prep_phrase(PP).
 verb_phrase(vp(V,OP,NP,PP)) --> verb(V), obj_pronoun(OP), noun_phrase(NP), prep_phrase(PP).
 verb_phrase(vp(CV,NP,PP)) --> cmplx_verb(CV), noun_phrase(NP), prep_phrase(PP).
 verb_phrase(vp(CV,NP1,NP2,PP)) --> cmplx_verb(CV), noun_phrase(NP1), noun_phrase(NP2), prep_phrase(PP).
 verb_phrase(vp(CV,OP,NP,PP)) --> cmplx_verb(CV), obj_pronoun(OP), noun_phrase(NP), prep_phrase(PP).
 verb_phrase(vp(V,NP,PP1,PP2)) --> verb(V), noun_phrase(NP), prep_phrase(PP1), prep_phrase(PP2).
 verb_phrase(vp(V,NP1,NP2,PP1,PP2)) --> verb(V), noun_phrase(NP1), noun_phrase(NP2), prep_phrase(PP1), prep_phrase(PP2).
 verb_phrase(vp(V,OP,NP,PP1,PP2)) --> verb(V), obj_pronoun(OP), noun_phrase(NP), prep_phrase(PP1), prep_phrase(PP2).
 verb_phrase(vp(CV,NP,PP1,PP2)) --> cmplx_verb(CV), noun_phrase(NP), prep_phrase(PP1), prep_phrase(PP2).
 verb_phrase(vp(CV,NP1,NP2,PP1,PP2)) --> cmplx_verb(CV), noun_phrase(NP1), noun_phrase(NP2), prep_phrase(PP1), prep_phrase(PP2).
 verb_phrase(vp(CV,OP,NP,PP1,PP2)) --> cmplx_verb(CV), obj_pronoun(OP), noun_phrase(NP), prep_phrase(PP1), prep_phrase(PP2).
 prep_phrase(pp(P,NP)) --> prep(P), noun_phrase(NP).
 prep_phrase(pp(P,N)) --> prep(P), noun(N).
 cmplx_noun(cn(A,N)) --> adj(A), noun(N).
 cmplx_noun(cn(A1,A2,N)) --> adj(A1), adj(A2), noun(N).
 cmplx_verb(cv(AD,V)) --> adverb(AD), verb(V).
 noun(n(box)) --> [box].
 noun(n(room)) --> [room].
 noun(n(school)) --> [school].
 noun(n(boy)) --> [boy].
 noun(n(tree)) --> [tree].
 noun(n(building)) --> [building].
 noun(n(woman)) --> [woman].
 noun(n(man)) --> [man].
 noun(n(envelope)) --> [envelope].
 noun(n(letters)) --> [letters].
 noun(n(shed)) --> [shed].
 noun(n(kid)) --> [kid].
 noun(n(child)) --> [child].
 noun(n(hotel)) --> [hotel].
 noun(n(guy)) --> [guy].
 noun(n(girl)) --> [girl].
 noun(n(college)) --> [college].
 noun(n(flat)) --> [flat].
 noun(n(citizen)) --> [citizen].
 noun(n(car)) --> [car].
 adj(a(big)) --> [big].
 adj(a(young)) --> [young].
 adj(a(poor)) --> [poor].
 adj(a(white)) --> [white].
 adj(a(old)) --> [old].
 adj(a(large)) --> [large].
 adj(a(empty)) --> [empty].
 adj(a(pretty)) --> [pretty].
 adj(a(ugly)) --> [ugly].
 adj(a(full)) --> [full].
 adj(a(wealthy)) --> [wealthy].
 adj(a(black)) --> [black].
 adj(a(small)) --> [small].
 adj(a(beautiful)) --> [beautiful].
 adj(a(fat)) --> [fat].
 adj(a(thin)) --> [thin].
 adj(a(fast)) --> [fast].
 adj(a(slow)) --> [slow].
 adj(a(strong)) --> [strong].
 adj(a(weak)) --> [weak].
 prep(p(with)) --> [with].
 prep(p(after)) --> [after].
 prep(p(in)) --> [in].
 prep(p(behind)) --> [behind].
 prep(p(on)) --> [on].
 prep(p(above)) --> [above].
 prep(p(under)) --> [under].
 prep(p(without)) --> [without].
 prep(p(at)) --> [at].
 prep(p(for)) --> [for].
 det(d(a)) --> [a].
 det(d(the)) --> [the].
 det(d(every)) --> [every].
 det(d(some)) --> [some].
 det(d(three)) --> [three].
 det(d(any)) --> [any].
 det(d(ten)) --> [ten].
 det(d(enough)) --> [enough].
 obj_pronoun(op(me)) --> [me].
 rel_pronoun(rp(who)) --> [who].
 verb(v(climbed)) --> [climbed].
 verb(v(gave)) --> [gave].
 verb(v(put)) --> [put].
 verb(v(worked)) --> [worked].
 verb(v(killed)) --> [killed].
 verb(v(bought)) --> [bought].
 verb(v(studied)) --> [studied].
 verb(v(placed)) --> [placed].
 verb(v(brought)) --> [brought].
 verb(v(carried)) --> [carried].
 verb(v(caught)) --> [caught].
 verb(v(made)) --> [made].
 verb(v(thought)) --> [thought].
 verb(v(saw)) --> [saw].
 verb(v(came)) --> [came].
 verb(v(wanted)) --> [wanted].
 verb(v(told)) --> [told].
 verb(v(said)) --> [said].
 verb(v(called)) --> [called].
 verb(v(asked)) --> [asked].
 verb(v(climbs)) --> [climbs].
 verb(v(gives)) --> [gives].
 verb(v(works)) --> [works].
 verb(v(kills)) --> [kills].
 verb(v(buys)) --> [buys].
 verb(v(studies)) --> [studies].
 verb(v(places)) --> [places].
 verb(v(brings)) --> [brings].
 verb(v(carries)) --> [carries].
 verb(v(catches)) --> [catches].
 verb(v(makes)) --> [makes].
 verb(v(thinks)) --> [thinks].
 verb(v(sees)) --> [sees].
 verb(v(comes)) --> [comes].
 verb(v(wants)) --> [wants].
 verb(v(tells)) --> [tells].
 verb(v(says)) --> [says].
 verb(v(calls)) --> [calls].
 verb(v(asks)) --> [asks].
 adverb(ad(secretly)) --> [secretly].
 adverb(ad(quickly)) --> [quickly].
 adverb(ad(slowly)) --> [slowly].
 adverb(ad(quietly)) --> [quietly].
 adverb(ad(directly)) --> [directly].
 adverb(ad(finally)) --> [finally].
 adverb(ad(sadly)) --> [sadly].
 adverb(ad(happily)) --> [happily].
 adverb(ad(loudly)) --> [loudly].
 adverb(ad(completely)) --> [completely].
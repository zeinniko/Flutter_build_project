import 'package:nessa_beauty_clone/widget/appbar.dart';
import 'package:flutter/material.dart';

import '../widget/footer.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 1,
        child: Scaffold(
          appBar: AuliaAppBar(),
          body: Container(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: Colors.pink[300]),
                  child: Text(
                    '🚗 Free Shipping For Orders Above 99 AED 🚗',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  height: 1100,
                  child: GridView(
                    physics: ScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    children: [
                      Image.network(
                          'https://cdn.nessa.com/j_OXK_Pd3_Tzv_XMPA_4_BK_68p_57c1a19fe7/j_OXK_Pd3_Tzv_XMPA_4_BK_68p_57c1a19fe7.jpg'),
                      Image.network(
                          'https://cdn.nessa.com/br_Ygvp_Kzc03ms_BT_3_Kdi1_7601477392/br_Ygvp_Kzc03ms_BT_3_Kdi1_7601477392.jpg'),
                      Image.network(
                          'https://cdn.nessa.com/Tkq_B_Qn_M3_YBOHNIQ_Uqg_Fw_884b9ab849/Tkq_B_Qn_M3_YBOHNIQ_Uqg_Fw_884b9ab849.jpg'),
                      Image.network(
                          'https://cdn.nessa.com/V_Ltp_Vx_CS_Zg_J4ozd_AR_Jk_Y_3b38717f9c/V_Ltp_Vx_CS_Zg_J4ozd_AR_Jk_Y_3b38717f9c.jpg'),
                      Image.network(
                          'https://cdn.nessa.com/bn_WVS_4z_I6_X_Tw8_KUL_Od_Wc_a84b3f3f1b/bn_WVS_4z_I6_X_Tw8_KUL_Od_Wc_a84b3f3f1b.jpg'),
                      Image.network(
                          'https://cdn.nessa.com/8_Yvi9_Hoqtkg_F_Gn_Fpjd_C3_f91d7f363c/8_Yvi9_Hoqtkg_F_Gn_Fpjd_C3_f91d7f363c.jpg'),
                      Image.network(
                          'https://cdn.nessa.com/2169_9651631376814_Gradient_Lips_63072f9677/2169_9651631376814_Gradient_Lips_63072f9677.jpg'),
                      Image.network(
                          'https://cdn.nessa.com/hjm_U_Bzu_Y4miorq_Nk_U7_OO_d6b46c5cc6/hjm_U_Bzu_Y4miorq_Nk_U7_OO_d6b46c5cc6.jpg'),
                      Image.network(
                          'https://cdn.nessa.com/r0i_DH_Ve_T_Ot_Ch_Qe_Z68i_AD_da108e504b/r0i_DH_Ve_T_Ot_Ch_Qe_Z68i_AD_da108e504b.jpg'),
                      Image.network(
                          'https://cdn.nessa.com/Fhigbc_G8eg_L_Lqw1_WJT_Tx_58287defc9/Fhigbc_G8eg_L_Lqw1_WJT_Tx_58287defc9.jpg'),
                      Image.network(
                          'https://cdn.nessa.com/9470_996500053754_Nainavideo_4a15800b3f/9470_996500053754_Nainavideo_4a15800b3f.jpg'),
                      Image.network(
                          'https://cdn.nessa.com/Vy5juql2cnyx_TI_Bv_XA_3c_1440705e3f/Vy5juql2cnyx_TI_Bv_XA_3c_1440705e3f.jpg'),
                    ],
                  ),
                ),
                FooterAulia(),
              ],
            ),
          ),
        ));
  }
}

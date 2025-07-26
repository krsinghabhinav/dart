
// Banks selectedBankItem = Banks();
//   RxList<Banks> selectBankList = <Banks>[].obs;

// Future<void> getAllPaymentsList() async {
//     await callGetWebApi(this, ApiUrls.uploadPayment,
//         showLoader: true,
//         hideLoader: true,
//         token: Constants.loginResponse!.token!,
//         onResponse: (http.Response response) {
//       var responseJson = jsonDecode(response.body);
//       UploadPaymentHistoryModel result =
//           UploadPaymentHistoryModel.fromJson(responseJson);
//       paymentHistoryList.value = result.data!;

//       //vehicleListModel.value = VehicleListModel.fromJson(responseJson);
//     });
//   }

// Padding(
//                                     padding: const EdgeInsets.only(
//                                       top: 5,
//                                       bottom: 5,
//                                     ),
//                                     child: Container(
//                                       //  margin: const EdgeInsets.all(15.0),
//                                       //padding: const EdgeInsets.all(8.0),

//                                       decoration: BoxDecoration(
//                                         border: Border.all(
//                                           color: Colors.grey.shade300,
//                                         ),
//                                         borderRadius: const BorderRadius.all(
//                                             Radius.circular(10)),
//                                       ),
//                                       child: DropdownSearch<Banks>(
//                                         dropdownButtonProps: DropdownButtonProps(
//                                             //color: CustomColors.blueGradient,
//                                             icon: Icon(
//                                           Icons.keyboard_arrow_down_outlined,
//                                           size: Get.width * 0.08,
//                                         )),
//                                         popupProps: PopupProps.menu(
//                                           fit: FlexFit.loose,
//                                           showSearchBox: true,
//                                           menuProps: MenuProps(
//                                             backgroundColor: Colors
//                                                 .white, // Background color of dropdown box
//                                             elevation:
//                                                 5, // Add elevation to give depth
//                                             shape: RoundedRectangleBorder(
//                                               borderRadius:
//                                                   BorderRadius.circular(
//                                                       20), // Rounded corners
//                                             ),
//                                           ),
//                                           listViewProps: const ListViewProps(
//                                               // padding: EdgeInsets.only(
//                                               //     top: 5,
//                                               //     bottom: 5), // Adjust the padding
//                                               /* itemExtent:
//                                               35, */ // Adjust item height (optional)
//                                               ),
//                                           // add this line
//                                         ),
//                                         items: selectBankList,
//                                         itemAsString: (Banks u) =>
//                                             (u.bankName == null
//                                                 ? "  Select Bank"
//                                                 : u.bankName.toString()),
//                                         // u.storeName.toString() + ' (' + u.empSapId + ')',
//                                         dropdownDecoratorProps:
//                                             DropDownDecoratorProps(
//                                           dropdownSearchDecoration:
//                                               InputDecoration(
//                                             //labelStyle: TextStyle(fontSize: Get.width*0.06),
//                                             border: OutlineInputBorder(
//                                                 borderSide: BorderSide(
//                                                     color: Colors.grey)),
//                                             focusedBorder: InputBorder.none,
//                                             enabledBorder: InputBorder.none,
//                                             errorBorder: InputBorder.none,
//                                             // disabledBorder: InputBorder.none,
//                                             contentPadding: EdgeInsets.only(
//                                                 left: 5.0,
//                                                 top: Get.width * 0.025),
//                                             hintText: "Search",
//                                           ),
//                                         ),
//                                         onChanged: (value) async {
//                                           setState(() {
//                                             selectedBankItem = value!;
//                                             getAllPaymentsList();
//                                           });

//                                           //  await sendDate(selectedDate);
//                                         },
//                                         selectedItem: selectedBankItem,
//                                         /*  dropdownBuilder: (context, selectedItem) {
//                                         return Utils.textViewContent(
//                                           _selectedReason.value.reason == null?"Select Reason":_selectedReason.value.reason!,
//                                           _selectedReason.value.reason == null?Colors.grey.shade600:CustomColors.black,
//                                           _selectedReason.value.reason == null?FontWeight.w400:FontWeight.w500, // Default text
                                         
//                                         );
//                                       }, */
//                                       ),
//                                     ),
//                                   ),
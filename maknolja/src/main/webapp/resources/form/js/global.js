(function ($) {
    'use strict';
    /*==================================================================
        [ Daterangepicker ]*/
    
    
    try {
        $('#input-start').daterangepicker({
            ranges: true,
            autoApply: true,
            applyButtonClasses: false,
            autoUpdateInput: false
        },function (start, end) {
            $('#input-start').val(start.format('YYYY/MM/DD'));
            $('#input-end').val(end.format('YYYY/MM/DD'));
        });
    
        $('#input-start-2').daterangepicker({
            ranges: true,
            autoApply: true,
            applyButtonClasses: false,
            autoUpdateInput: false
        },function (start, end) {
            $('#input-start-2').val(start.format('YYYY/MM/DD'));
            $('#input-end-2').val(end.format('YYYY/MM/DD'));
        });
    
    } catch(er) {console.log(er);}
    /*==================================================================
        [ Single Datepicker ]*/
    
    
    try {
        var singleDate = $('.js-single-datepicker');
    
        singleDate.each(function () {
            var that = $(this);
            var dropdownParent = '#dropdown-datepicker' + that.data('drop');
    
            that.daterangepicker({
                "singleDatePicker": true,
                "showDropdowns": true,
                "autoUpdateInput": true,
                "parentEl": dropdownParent,
                "opens": 'left',
                "locale": {
                    "format": 'YYYY/MM/DD'
                }
            });
        });
    } catch(er) {console.log(er);}
    /*==================================================================
        [ Special Select ]*/
    
    try {
        var body = $('body,html');
    
        var selectSpecial = $('#js-select-special');
        var info = selectSpecial.find('#info');
        var dropdownSelect = selectSpecial.parent().find('.dropdown-select');
        var listRoom = dropdownSelect.find('.list-room');
        var btnAddRoom = $('#btn-add-room');
        var totalRoom = 1;

        selectSpecial.on('click', function (e) {
            e.stopPropagation();
            $(this).toggleClass("open");
            dropdownSelect.toggleClass("show");
        });
    
        dropdownSelect.on('click', function (e) {
            e.stopPropagation();
        });
    
        body.on('click', function () {
            selectSpecial.removeClass("open");
            dropdownSelect.removeClass("show");
        });
    
        listRoom.on('click', '.plus', function () {
            var that = $(this);
            var qtyContainer = that.parent();
            var qtyInput = qtyContainer.find('input[type=number]');
            var oldValue = parseInt(qtyInput.val());
            if(oldValue < 5){
                var newVal = oldValue + 1;
                qtyInput.val(newVal);
                updateRoom();
            }

        });
    
        listRoom.on('click', '.minus', function () {
            var that = $(this);
            var qtyContainer = that.parent();
            var qtyInput = qtyContainer.find('input[type=number]');
            var min = qtyInput.attr('min');
    
            var oldValue = parseInt(qtyInput.val());
            if (oldValue <= min) {
                var newVal = oldValue;
            } else {
                var newVal = oldValue - 1;
            }
            qtyInput.val(newVal);
    
            updateRoom();
        });
    
    
    
        listRoom.on('change', '.inputQty', function () {
            var that = $(this);
            if (isNumber(that.val())) {
                var qtyVal = parseInt(that.val());
                if (that.val().length === 0) {
                    qtyVal = 0;
                }
    
                if (qtyVal < 0) {
                    qtyVal = 0;
                }
                that.val(qtyVal);
    
                updateRoom();
            }
        });
    
        function isNumber(n){
            return typeof(n) != "boolean" && !isNaN(n);
        }
    
        btnAddRoom.on('click', function (e) {
            e.preventDefault();

            if(totalRoom < 3){
            totalRoom++;
                listRoom.append('<li class="list-room__item">' +
                    '                                        <span class="list-room__name"> 방 '+ totalRoom +'</span>' +
                    '                                        <ul class="list-person">' +
                    '                                            <li class="list-person__item">' +
                    '                                                <span class="name">' +
                    '                                                    성인' +
                    '                                                </span>' +
                    '                                                <div class="quantity quantity1">' +
                    '                                                    <span class="minus">' +
                    '                                                        -' +
                    '                                                    </span>' +
                    '                                                    <input type="number" min="0" value="0" max="5" class="inputQty">' +
                    '                                                    <span class="plus">' +
                    '                                                        +' +
                    '                                                    </span>' +
                    '                                                </div>' +
                    '                                            </li>' +
                    '                                            <li class="list-person__item">' +
                    '                                                <span class="name">' +
                    '                                                    아이' +
                    '                                                </span>' +
                    '                                                <div class="quantity quantity2">' +
                    '                                                    <span class="minus">' +
                    '                                                        -' +
                    '                                                    </span>' +
                    '                                                    <input type="number" min="0" value="0" max="5" class="inputQty">' +
                    '                                                    <span class="plus">' +
                    '                                                        +' +
                    '                                                    </span>' +
                    '                                                </div>' +
                    '                                            </li>' +
                    '                                        </ul>');


                updateRoom();
            }

            if(totalRoom > 3){
                return false;
            }
        });
    
    
        function countAdult() {
            var listRoomItem = listRoom.find('.list-room__item');
            var totalAdults = 0;
    
            listRoomItem.each(function () {
                var that = $(this);
                var numberAdults = parseInt(that.find('.quantity1 > input').val());
    
                totalAdults = totalAdults + numberAdults;
    
            });
    
            return totalAdults;
        }
    
        function countChildren() {
            var listRoomItem = listRoom.find('.list-room__item');
            var totalChildren = 0;
    
            listRoomItem.each(function () {
                var that = $(this);
                var numberChildren = parseInt(that.find('.quantity2 > input').val());
    
                totalChildren = totalChildren + numberChildren;
            });
    
            return totalChildren;
        }
    
        function updateRoom() {
            var totalAd = parseInt(countAdult());
            var totalChi = parseInt(countChildren());
            var adults = '명, ';
            var rooms = '객실';
    
            if (totalAd > 1) {
                adults = '명,';
            }
    
            if (totalRoom > 1) {
                rooms = '객실';
            }
    
            var infoText = rooms + totalRoom + '개,' + '성인' + totalAd + adults + '아이' + totalChi + '명';
    
            info.val(infoText);
        }
    
    } catch (e) {
        console.log(e);
    }
    /*[ Select 2 Config ]
        ===========================================================*/
    
    try {
        var selectSimple = $('.js-select-simple');
    
        selectSimple.each(function () {
            var that = $(this);
            var selectBox = that.find('select');
            var selectDropdown = that.find('.select-dropdown');
            selectBox.select2({
                dropdownParent: selectDropdown
            });
        });
    
    } catch (err) {
        console.log(err);
    }
    

})(jQuery);
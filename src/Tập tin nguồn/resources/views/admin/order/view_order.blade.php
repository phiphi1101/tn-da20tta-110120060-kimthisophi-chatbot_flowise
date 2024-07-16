@extends('layouts.admin')

@section('title')
    <title>Mani's Stylish Fashion</title>
@endsection
<style>
    h5 {
        font-weight: bold;
        padding: 12px;
        background-color: #c5ecce;
        text-align: center;
    }

    th {
        color: gray;
        background-color: #d6efdc;
    }

    td {
        background-color: #ecf3ee;
    }
</style>

@section('content')
    <div class="content-wrapper p-3">

        <a target="_blank" href="{{ url('/print-order/' . $order_by_id->first()->order_id) }}"
            class="btn btn-sm btn-outline-secondary float-right m-2">
            <strong>&nbsp;In đơn hàng</strong>
        </a>

        <br>
        <br>
        <h5><b>THÔNG TIN KHÁCH HÀNG</b></h5>
        <table class="table table-sm">
            <thead>
                <tr>
                    <th scope="col">Tên khách hàng</th>
                    <th scope="col">Số điện thoại</th>
                    <th scope="col">Email</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>{{ $order_by_id->first()->customer_name }}</td>
                    <td>{{ $order_by_id->first()->customer_phone }}</td>
                    <td>{{ $order_by_id->first()->customer_email }}</td>
                </tr>
            </tbody>
        </table>

        <br>

        <h5><b>THÔNG TIN VẬN CHUYỂN</b></h5>
        <table class="table table-sm">
            <thead>
                <tr>
                    <th scope="col">Tên người nhận hàng</th>
                    <th scope="col">Địa chỉ</th>
                    <th scope="col">Số điện thoại</th>
                    <th scope="col">Ghi chú đơn hàng</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>{{ $order_by_id->first()->shipping_name }}</td>
                    <td>{{ $order_by_id->first()->shipping_address }}</td>
                    <td>{{ $order_by_id->first()->shipping_phone }}</td>
                    <td>{{ $order_by_id->first()->shipping_notes }}</td>
                </tr>
            </tbody>
        </table>

        <br>

        <h5><b>CHI TIẾT ĐƠN HÀNG</b></h5>
        <table class="table table-sm">
            <thead>
                <tr>
                    <th scope="col">Tên sản phẩm</th>
                    <th scope="col">Kích thước</th>
                    <th scope="col">Màu sắc</th>
                    <th scope="col">Số lượng</th>
                    <th scope="col">Giá</th>
                    <th scope="col">Tổng tiền</th>
                    <th scope="col">Tình trạng</th>
                </tr>
            </thead>
            <tbody>
                @php
                    $totalAmount = 0; // Tạo biến tổng
                @endphp
                @foreach ($order_by_id as $order)
                    <tr>
                        <td>{{ $order->product_name }}</td>
                        <td>{{ $order->size }}</td>
                        <td>{{ $order->color }}</td>
                        <td>{{ $order->product_sales_quantity }}</td>
                        <td>{{ number_format(floatval($order->product_price)) }} VNĐ</td>
                        <td>{{ number_format(floatval($order->product_price * $order->product_sales_quantity)) }} VNĐ</td>
                        <td>{{ $order->order_status }}</td>
                    </tr>
                    @php
                        $totalAmount += $order->product_price * $order->product_sales_quantity; // Cập nhật tổng
                    @endphp
                @endforeach
                <tr>
                    <td colspan="3"></td>
                    <td><b>Tổng thanh toán: {{ number_format($totalAmount) }} VNĐ</b></td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="3"></td>
                    <td><b>Bằng chữ: {{ convertNumberToWords($totalAmount) }}</b></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </div>
@endsection

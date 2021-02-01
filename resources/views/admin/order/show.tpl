
<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    <h4 class="modal-title" id="exampleModalLabel">账号</h4>
</div>
<div class="modal-body">
    <table class="table table-striped" id="historyTable">
        <thead>
        <tr>
            <th>账号</th>
            <th>密码</th>
        </tr>
        </thead>
        <tbody>
        <{if !empty($_data.accounts)}>
        <{foreach $_data.accounts as $account}>
        <tr>
            <td><{$account.username}></td>
            <td><{$account.password}></td>
        </tr>
            <{/foreach}>
        <{else}>
        <tr>
            <td colspan="2">暂无数据</td>
        </tr>
        <{/if}>
        </tbody>
    </table>
</div>
<div class="modal fade" id="chatLogModal" tabindex="-2" role="dialog" aria-hidden="true" data-backdrop="false">
    <div class="modal-dialog  modal-lg">
        <div class="modal-content" style="height: 400px;overflow: scroll;margin: 50px;">

        </div>
    </div>
</div>
<script>

    (function($){
        function modal(id)
        {
            $('#chatLogModal').modal({
                backdrop: false,
                show:false,
                remote: "<{url('admin/chat/chat')}>/" + id
            });
        }

        $(document).on('shown.bs.modal', '#chatLogModal', function(){
            $('.modal-backdrop').eq(1).remove();
        });

        $(document).on('hidden.bs.modal', '#chatLogModal', function(){
            $(this).removeData("bs.modal");
            $(this).find('.modal-content').children().remove();
        });

        $(document).on('click', '#closeLog', function(){
            $('#chatLogModal').removeData("bs.modal");
            $('#chatLogModal').find('.modal-content').children().remove();
            $('#chatLogModal').hide();
        });
    })(jQuery);
</script>

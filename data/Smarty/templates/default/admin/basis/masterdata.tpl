<!--{*
/*
 * Copyright(c) 2000-2007 LOCKON CO.,LTD. All Rights Reserved.
 *
 * http://www.lockon.co.jp/
 */
*}-->
<!--★★メインコンテンツ★★-->
<table width="878" border="0" cellspacing="0" cellpadding="0" summary=" ">
	<tr valign="top">
		<td background="<!--{$TPL_DIR}-->img/contents/navi_bg.gif" height="402">
			<!--▼SUB NAVI-->
			<!--{include file=$tpl_subnavi}-->
			<!--▲SUB NAVI-->
		</td>
		<td class="mainbg">
			<!--▼登録テーブルここから-->
			<table width="737" border="0" cellspacing="0" cellpadding="0" summary=" ">
				<!--メインエリア-->
				<tr>
					<td align="center">
						<table width="706" border="0" cellspacing="0" cellpadding="0" summary=" ">
							<tr><td height="14"></td></tr>
							<tr>
								<td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/main_top.jpg" width="706" height="14" alt=""></td>
							</tr>
							<tr>
								<td background="<!--{$TPL_DIR}-->img/contents/main_left.jpg"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="14" height="1" alt=""></td>
								<td bgcolor="#cccccc">
								<table width="678" border="0" cellspacing="0" cellpadding="0" summary=" ">
									<tr>
										<td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/contents_title_top.gif" width="678" height="7" alt=""></td>
									</tr>
									<tr>
										<td background="<!--{$TPL_DIR}-->img/contents/contents_title_left_bg.gif"><img src="<!--{$TPL_DIR}-->img/contents/contents_title_left.gif" width="22" height="12" alt=""></td>
										<td bgcolor="#636469" width="638" class="fs14n"><span class="white"><!--コンテンツタイトル-->マスタデータ管理</span></td>
										<td background="<!--{$TPL_DIR}-->img/contents/contents_title_right_bg.gif"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="18" height="1" alt=""></td>
									</tr>
									<tr>
										<td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/contents_title_bottom.gif" width="678" height="7" alt=""></td>
									</tr>
									<tr>
										<td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/main_bar.jpg" width="678" height="10" alt=""></td>
									</tr>
								</table>
<form name="form1" id="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->">
<input type="hidden" name="mode" value="show">

<table width="678" border="0" cellspacing="1" cellpadding="8" summary=" ">
  <tr>
    <td bgcolor="#f2f1ec" width="180" class="fs12n">
      <select name="master_data_name" id="master_data_name">
      <!--{html_options output=$arrMasterDataName values=$arrMasterDataName selected=$masterDataName}-->
      </select>
      <input type="submit" value="選択">
    </td>
  </tr>
</table>
</form>
<!--{if count($arrMasterData) > 0}-->
<form name="form2" id="form2" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->">
<input type="hidden" name="mode" value="edit">
<input type="hidden" name="master_data_name" value="<!--{$masterDataName}-->">
<table width="678" border="0" cellspacing="1" cellpadding="8" summary=" ">
  <tr class="fs12n">
    <td bgcolor="#f2f1ec" align="center" colspan="2"><strong>マスタデータ編集</strong></td>
  </tr>
  <tr class="fs12n">
    <td bgcolor="#ffffff" align="left" colspan="2">
      <ul class="red">
        <li>マスタデータの値を設定できます。</li>
        <li>重複したIDを登録することはできません。</li>
        <li>空のIDを登録すると、値は削除されます。</li>
        <li>設定値によってはサイトが機能しなくなる場合もありますので、十分ご注意下さい。</li>
      </ul>
    </td>
  </tr>
  <!--{if $errorMessage != ""}-->
  <tr class="fs12n">
    <td bgcolor="#ffffff" align="left" colspan="2">
      <span class="red"><!--{$errorMessage}--></span>
    </td>
  </tr>
  <!--{/if}-->

  <!--{foreach from=$arrMasterData item=val key=key}-->
  <tr class="fs12n">
    <td bgcolor="#ffffff" align="left">
    ID：<input type="text" name="id[]" value="<!--{$key|escape}-->" size="6">
    </td>
    <td bgcolor="#ffffff" align="left">
    値：<input type="text" name="name[]" value="<!--{$val|escape}-->" style="" size="60"
            class="box60" />
    </td>
  </tr>
  <!--{/foreach}-->
  <tr class="fs12n">
    <td bgcolor="#f2f1ec" align="center" colspan="2">追加のデータ</td>
  </tr>
  <tr class="fs12n">
    <td bgcolor="#ffffff" align="left">
    ID：<input type="text" name="id[]" size="6">
    </td>
    <td bgcolor="#ffffff" align="left">
    値：<input type="text" name="name[]" style="" size="60"
            class="box60" />
    </td>
  </tr>
</table>
</form>
								<table width="678" border="0" cellspacing="0" cellpadding="0" summary=" ">
									<tr>
										<td bgcolor="#cccccc"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="1" height="5" alt=""></td>
										<td><img src="<!--{$TPL_DIR}-->img/contents/tbl_top.gif" width="676" height="7" alt=""></td>
										<td bgcolor="#cccccc"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="1" height="5" alt=""></td>
									</tr>
									<tr>
										<td bgcolor="#cccccc"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="1" height="10" alt=""></td>
										<td bgcolor="#e9e7de" align="center">
										<table border="0" cellspacing="0" cellpadding="0" summary=" ">
											<tr>
												<td>
<input onClick="return document.form2.submit()" type="image" onMouseover="chgImgImageSubmit('<!--{$TPL_DIR}-->img/contents/btn_regist_on.jpg',this)" onMouseout="chgImgImageSubmit('<!--{$TPL_DIR}-->img/contents/btn_regist.jpg',this)" src="<!--{$TPL_DIR}-->img/contents/btn_regist.jpg" width="123" height="24" alt="この内容で登録する" border="0" name="subm" >
												</td>
											</tr>
										</table>

										</td>
										<td bgcolor="#cccccc"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="1" height="10" alt=""></td>
									</tr>
									<tr>
										<td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/tbl_bottom.gif" width="678" height="8" alt=""></td>
									</tr>
								</table>
<!--{/if}-->
								</td>
								<td background="<!--{$TPL_DIR}-->img/contents/main_right.jpg"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="14" height="1" alt=""></td>
							</tr>
							<tr>
								<td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/main_bottom.jpg" width="706" height="14" alt=""></td>
							</tr>
							<tr><td height="30"></td></tr>
						</table>
					</td>
				</tr>
				<!--メインエリア-->
			</table>
			<!--▲登録テーブルここまで-->
		</td>
	</tr>
</form>
</table>
<!--★★メインコンテンツ★★-->

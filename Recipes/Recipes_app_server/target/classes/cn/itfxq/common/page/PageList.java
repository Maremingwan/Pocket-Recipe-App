package cn.itfxq.common.page;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class PageList {
    //总共的条数
    private Long total;
    //每一页显示的数据
    private List rows = new ArrayList();

    public Long getTotal() {
        return total;
    }

    public void setTotal(Long total) {
        this.total = total;
    }

    public List getRows() {
        return rows;
    }

    public void setRows(List rows) {
        this.rows = rows;
    }
}
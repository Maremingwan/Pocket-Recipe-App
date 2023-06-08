package cn.itfxq.business.food.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import java.util.Date;

@Data
public class Food {
    //排行id
    private Long rankid;

    //菜品id
    private Long id;

    //菜品名称
    private String foodName;

    //口味
    private String taste;

    //价格
    private Double price;

    //购物车数量
    private Long count;

    //菜品图片
    private String foodPic;

    //菜品类型 1-早餐 2 午餐 3晚餐 4 小吃 5水果 6甜点
    private Long foodType;

    private String ycl;//原材料

    private String zf;//做法

    private Long viewnum;//浏览次数

    //创建时间
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date createTime;

    public Long getRankid() {
        return rankid;
    }

    public void setRankid(Long rankid) {
        this.rankid = rankid;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFoodName() {
        return foodName;
    }

    public void setFoodName(String foodName) {
        this.foodName = foodName;
    }

    public String getTaste() {
        return taste;
    }

    public void setTaste(String taste) {
        this.taste = taste;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Long getCount() {
        return count;
    }

    public void setCount(Long count) {
        this.count = count;
    }

    public String getFoodPic() {
        return foodPic;
    }

    public void setFoodPic(String foodPic) {
        this.foodPic = foodPic;
    }

    public Long getFoodType() {
        return foodType;
    }

    public void setFoodType(Long foodType) {
        this.foodType = foodType;
    }

    public String getYcl() {
        return ycl;
    }

    public void setYcl(String ycl) {
        this.ycl = ycl;
    }

    public String getZf() {
        return zf;
    }

    public void setZf(String zf) {
        this.zf = zf;
    }

    public Long getViewnum() {
        return viewnum;
    }

    public void setViewnum(Long viewnum) {
        this.viewnum = viewnum;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}

const base = {
    get() {
                return {
            url : "http://localhost:8081/ssm3j4fo/",
            name: "ssm3j4fo",
            // 退出到首页链接
            indexUrl: 'http://localhost:8081/ssm3j4fo/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "驾考服务系统"
        }
    }
}
export default base

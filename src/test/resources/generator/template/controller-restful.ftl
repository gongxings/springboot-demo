package ${basePackage}.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import ${basePackage}.model.entity.${modelNameUpperCamel};
import ${basePackage}.service.${modelNameUpperCamel}Service;
import ${basePackage}.controller.common.ResResult;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
* Created by ${author} on ${date}.
*/
@RestController
@RequestMapping("${baseRequestMapping}")
public class ${modelNameUpperCamel}Controller {
    @Resource
    private ${modelNameUpperCamel}Service ${modelNameLowerCamel}Service;

    @PostMapping
    public ResResult add(@RequestBody ${modelNameUpperCamel} ${modelNameLowerCamel}) {
        ${modelNameLowerCamel}Service.save(${modelNameLowerCamel});
        return ResResult.success();
    }

    @DeleteMapping("/{id}")
    public ResResult delete(@PathVariable Integer id) {
        ${modelNameLowerCamel}Service.deleteById(id);
        return ResResult.success();
    }

    @PutMapping
    public ResResult update(@RequestBody ${modelNameUpperCamel} ${modelNameLowerCamel}) {
        ${modelNameLowerCamel}Service.update(${modelNameLowerCamel});
        return ResResult.success();
    }

    @GetMapping("/{id}")
    public ResResult detail(@PathVariable Integer id) {
        ${modelNameUpperCamel} ${modelNameLowerCamel} = ${modelNameLowerCamel}Service.findById(id);
        return ResResult.success(${modelNameLowerCamel});
    }

    @GetMapping
    public ResResult list(@RequestParam(defaultValue = "0") Integer page, @RequestParam(defaultValue = "0") Integer size) {
        PageHelper.startPage(page, size);
        List<${modelNameUpperCamel}> list = ${modelNameLowerCamel}Service.findAll();
        PageInfo pageInfo = new PageInfo(list);
        return ResResult.success(pageInfo);
    }
}
